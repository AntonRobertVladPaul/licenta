import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:licenta/core/network/failure.dart';

abstract class DataSourceHandler {
  static Future<Either<Failure, T>> execute<T>(
    Future<T> Function() call, {
    Failure? Function(Object exeception)? errorHandler,
  }) async {
    try {
      final res = await call();
      return Right(res);
    } catch (exception, stackTrace) {
      if (exception is DioError && exception.error is SocketException) {
        return const Left(Failure.noInternet());
      } else {
        final failure = errorHandler?.call(exception);
        if (failure != null) {
          await _logFailure(failure, exception, stackTrace);

          return Left(failure);
        } else {
          final Failure unhandledFailure;
          if (exception is Exception) {
            unhandledFailure = Failure.fromException(exception);
          } else if (exception is Error) {
            unhandledFailure = Failure.parsing(exception);
          } else {
            unhandledFailure = const Failure.unknown();
          }

          await _logFailure(unhandledFailure, exception, stackTrace);

          rethrow;
        }
      }
    }
  }

  static Future<Either<Failure, T>> executeAndHandleException<T>(
    Future<T> Function() call,
  ) async {
    final res = await execute(
      call,
      errorHandler: (exception) {
        if (exception is Exception) {
          return Failure.fromException(exception);
        }
        return null;
      },
    );

    return res;
  }
}

Future<void> _logFailure(
  Failure failure,
  dynamic exception,
  StackTrace stackTrace,
) async {
  await failure.maybeWhen(
    http: (dioError) {
// Taking out the first 5 entries
// which are identical for all requests
// The first entry in the stack should be the data source
      final stackParts =
          dioError.stackTrace.toString().split('\n').sublist(5).join('\n');
      final stackTrace = StackTrace.fromString(stackParts);

      return FirebaseCrashlytics.instance.recordError('Failure', stackTrace);
    },
    orElse: () {
      FirebaseCrashlytics.instance.recordError(exception, stackTrace);
    },
  );
}
