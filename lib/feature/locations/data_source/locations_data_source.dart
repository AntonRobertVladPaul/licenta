// ignore_for_file: avoid_dynamic_calls, cascade_invocations
// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:licenta/core/core.dart';

class LocationsRemoteDataSource {
  LocationsRemoteDataSource(FirebaseDatabase database) : _database = database;

  final FirebaseDatabase _database;

  Future<void> uploadImagesToDatabase(
    List<File> images,
    String locationId,
    Location location,
  ) async {
    final storage = FirebaseStorage.instance;
    final databaseURL = _database.databaseURL;
    final dio = Dio();

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

    // Save image URLs to Realtime Database
    final locationJson = location.toJson();
    final jsonData = {'images': imageUrls};
    locationJson.addAll(jsonData);
    await dio.put<Map<String, dynamic>>(
      '$databaseURL/locations/$locationId.json',
      data: locationJson,
    );
  }

  Future<String> createLocation(Location location) async {
    final databaseReference = _database.ref();
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
    final value = snapshot.value as Map<dynamic, dynamic>;

    value.forEach((key, value) {
      final location = Location.fromJson(
        (value as Map<dynamic, dynamic>).cast(),
      );
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
}
