import 'package:dartz/dartz.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/data_source_handler.dart';
import 'package:licenta/feature/main/data_source/data_source.dart';

class MainRepository {
  MainRepository({
    required MainRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final MainRemoteDataSource _remoteDataSource;

  Future<Either<Failure, Account?>> getAccount(String email) {
    return DataSourceHandler.execute(
      () => _remoteDataSource.getAccount(email),
    );
  }
}
