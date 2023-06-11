import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/data_source_handler.dart';
import 'package:licenta/feature/locations/data_source/data_source.dart';

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

  Future<Either<Failure, void>> uploadImagesToLocation({
    required List<File> images,
    required String locationId,
    required Location location,
  }) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.uploadImagesToDatabase(
        images,
        locationId,
        location,
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
}
