// ignore_for_file: avoid_dynamic_calls, cascade_invocations
// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/entity/entity.dart';

class LocationsRemoteDataSource {
  LocationsRemoteDataSource(FirebaseDatabase database) : _database = database;

  final FirebaseDatabase _database;

  DatabaseReference get databaseReference => _database.ref();

  Future<Location> uploadImagesToDatabase(
    List<File> images,
    Location location, {
    bool isUpdate = false,
  }) async {
    final storage = FirebaseStorage.instance;
    final databaseURL = _database.databaseURL;
    final dio = Dio();
    final locationId = location.id;
    final pastImages = List<String>.from(location.images ?? []);
    final imageUrls = <String>[];

    for (var i = 0; i < images.length; i++) {
      final file = images[i];
      final fileName = file.path.split('/').last;
      final storageRef = storage.ref().child(fileName);

      // Upload image to Firebase Storage
      final uploadTask = storageRef.putFile(file);
      final snapshot = await uploadTask.whenComplete(() => null);
      final imageUrl = await snapshot.ref.getDownloadURL();

      imageUrls.add(imageUrl);
    }

    pastImages.addAll(imageUrls);

    // Save image URLs to Realtime Database
    final locationJson = location.toJson();
    final jsonData = {'images': pastImages};
    locationJson.addAll(jsonData);

    await dio.put<Map<String, dynamic>>(
      '$databaseURL/locations/$locationId.json',
      data: locationJson,
    );

    final locationsRef = databaseReference.child('locations');
    final snapshot = await locationsRef.child(locationId ?? '').once().then(
          (event) => event.snapshot,
        );
    final updatedLocationData = snapshot.value;

    return Location.fromJson(
      (updatedLocationData as Map<dynamic, dynamic>).cast(),
    );
  }

  Future<String> createLocation(Location location) async {
    final locationsRef = databaseReference.child('locations');
    final newLocationRef = locationsRef.push();
    await newLocationRef.set(location.toJson());

    return newLocationRef.key ?? '';
  }

  Future<List<Location>> fetchLocations({String? email}) async {
    final databaseReference = _database.ref();
    final locationsRef = databaseReference.child('locations');
    final locations = <Location>[];

    final snapshot = await locationsRef.once().then(
          (event) => event.snapshot,
        );
    final value = snapshot.value as Map<dynamic, dynamic>?;

    if (value == null) {
      return locations;
    }
    value.forEach((key, value) {
      final location = Location.fromJson(
        (value as Map<dynamic, dynamic>).cast(),
      ).copyWith(id: key as String);
      if (email != null) {
        if (location.ownerEmail == email) {
          locations.add(location);
        }
      } else {
        locations.add(location);
      }
    });

    return locations;
  }

  Future<void> deleteLocation(String locationId) async {
    final locationsRef = databaseReference.child('locations');
    await locationsRef.child(locationId).remove();
  }

  Future<void> updateLocation(Location location) async {
    final databaseReference = _database.ref();
    final locationsRef = databaseReference.child('locations');
    await locationsRef.child(location.id ?? '').update(location.toJson());
  }

  Future<void> removeImageFromDatabase(
    String locationId,
    String imageUrlToDelete,
  ) async {
    final databaseReference = _database.ref();
    final locationsRef = databaseReference.child('locations');
    final locationRef = locationsRef.child(locationId);

    final snapshot = await locationRef.once().then((event) => event.snapshot);
    if (snapshot.value != null) {
      final locationData =
          Map<String, dynamic>.from(snapshot.value as Map<dynamic, dynamic>);

      // Remove the image URL from the images list
      if (locationData.containsKey('images') &&
          locationData['images'] is List) {
        final images = List<dynamic>.from(
          locationData['images'] as List<dynamic>,
        );
        images.remove(imageUrlToDelete);
        locationData['images'] = images;
      }

      // Update the location data in the database
      await locationRef.set(locationData);
    }
  }

  Future<Location> fetchOneLocation(String locationId) async {
    final databaseReference = _database.ref();
    final locationsRef = databaseReference.child('locations');
    final locationRef = locationsRef.child(locationId);

    final snapshot = await locationRef.once().then((event) => event.snapshot);
    final locationData =
        Map<String, dynamic>.from(snapshot.value as Map<dynamic, dynamic>);

    return Location.fromJson(locationData).copyWith(id: locationId);
  }

  Future<void> bookLocation({
    required Location location,
    required List<Reservation> reservations,
  }) async {
    final locationsRef = databaseReference.child('locations');

    await locationsRef.child(location.id ?? '').child('reservations').set(
          reservations.map((reservation) => reservation.toJson()).toList(),
        );
  }

  Future<void> updateAmount({
    required Location location,
    required int amount,
  }) async {
    final userRef = databaseReference.child('users');

    final snapshot = await userRef.once().then((event) => event.snapshot);
    final users = snapshot.value as Map<dynamic, dynamic>?;

    if (users != null) {
      for (final userKey in users.keys) {
        final user = users[userKey];
        if (user['email'] == location.ownerEmail) {
          final finalAmount = (user['amount'] as int) + amount;
          final userToUpdateRef = userRef.child(userKey as String);
          await userToUpdateRef.update({'amount': finalAmount});
          break;
        }
      }
    }
  }

  Future<void> updateDoorStatus({
    required String locationName,
    required String openDoorCode,
    required bool newDoorStatus,
  }) async {
    final locationsRef = databaseReference.child('locations');

    final snapshot = await locationsRef.once().then((event) => event.snapshot);

    final locations = snapshot.value as Map<dynamic, dynamic>?;

    if (locations != null) {
      var locationId = '';

      for (final entry in locations.entries) {
        final location = entry.value as Map<dynamic, dynamic>;

        if (location['name'] == locationName) {
          locationId = entry.key as String;
          break;
        }
      }

      if (locationId.isNotEmpty) {
        final reservations =
            locations[locationId]['reservations'] as List<dynamic>?;

        if (reservations != null) {
          for (final reservation in reservations) {
            final reservationMap = reservation as Map<dynamic, dynamic>;

            if (reservationMap['openDoorCode'] == openDoorCode) {
              reservationMap['isDoorOpen'] = newDoorStatus;
            }
          }

          await locationsRef
              .child(locationId)
              .child('reservations')
              .set(reservations);
        }
      }
    }
  }
}
