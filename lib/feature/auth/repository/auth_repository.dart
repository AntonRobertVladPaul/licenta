import 'package:dartz/dartz.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/data_source_handler.dart';
import 'package:licenta/feature/auth/auth.dart';

class AuthRepository {
  AuthRepository({
    required AuthRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final AuthRemoteDataSource _remoteDataSource;

  Future<Either<Failure, bool>> checkUserExists(String email) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.checkUserExists(email),
    );
  }

  Future<Either<Failure, void>> signUp(Account account) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.signUp(account),
    );
  }

  Future<Either<Failure, bool>> login(LoginParams params) async {
    return DataSourceHandler.execute(
      () => _remoteDataSource.login(params),
    );
  }
}
