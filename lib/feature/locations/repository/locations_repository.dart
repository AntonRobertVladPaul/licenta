import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/data_source_handler.dart';
import 'package:licenta/feature/locations/data_source/data_source.dart';
import 'package:licenta/feature/locations/entity/entity.dart';

class LocationsRepository {
  LocationsRepository({
    required LocationsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final LocationsRemoteDataSource _remoteDataSource;

  Future<Either<Failure, String>> createLocation(Location location) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.createLocation(location),
    );
  }

  Future<Either<Failure, Location>> uploadImagesToLocation({
    required List<File> images,
    required Location location,
    bool isUpdate = false,
  }) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.uploadImagesToDatabase(
        images,
        location,
        isUpdate: isUpdate,
      ),
    );
  }

  Future<Either<Failure, List<Location>>> fetchLocations({
    String? email,
  }) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.fetchLocations(email: email),
    );
  }

  Future<Either<Failure, void>> updateLocation(Location location) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.updateLocation(location),
    );
  }

  Future<Either<Failure, void>> deleteLocation(String locationId) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.deleteLocation(locationId),
    );
  }

  Future<Either<Failure, void>> deleteImage({
    required String locationId,
    required String imageUrl,
  }) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.removeImageFromDatabase(locationId, imageUrl),
    );
  }

  Future<Either<Failure, Location>> fetchOneLocation(String locationId) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.fetchOneLocation(locationId),
    );
  }

  Future<Either<Failure, void>> bookLocation({
    required Location location,
    required int amount,
    required List<Reservation> reservations,
  }) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.bookLocation(
        location: location,
        amount: amount,
        reservations: reservations,
      ),
    );
  }
}
