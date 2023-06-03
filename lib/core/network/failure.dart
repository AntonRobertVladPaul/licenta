// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.http(DioError e) = _Http;

  const factory Failure.parsing(Error e) = _Parsing;

  const factory Failure.unknown() = _Unknown;

  const factory Failure.noInternet() = _NoInternet;

  factory Failure.fromException(Exception e) {
    if (e is DioError) {
      return Failure.http(e);
    }
    return const Failure.unknown();
  }
}
