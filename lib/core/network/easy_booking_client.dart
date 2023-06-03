import 'package:dio/dio.dart';
import 'package:licenta/core/core.dart';

class EasyBookingClient {
  EasyBookingClient({
    required Dio dio,
    required NetworkConstants networkConstants,
  })  : _dio = dio,
        _constants = networkConstants;

  final Dio _dio;
  final NetworkConstants _constants;

  Future<Response<dynamic>> get(
    String route,
    int version, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return sendRequest(
      method: HttpMethod.get,
      route: route,
      queryParameters: queryParameters,
      headers: headers,
      version: version,
    );
  }

  Future<Response<dynamic>> post(
    String route,
    int version, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return sendRequest(
      method: HttpMethod.post,
      route: route,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
      version: version,
    );
  }

  Future<Response<dynamic>> patch(
    String route,
    int version, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return sendRequest(
      method: HttpMethod.patch,
      route: route,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
      version: version,
    );
  }

  Future<Response<dynamic>> put(
    String route,
    int version, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return sendRequest(
      method: HttpMethod.put,
      route: route,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
      version: version,
    );
  }

  Future<Response<dynamic>> delete(
    String route,
    int version, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return sendRequest(
      method: HttpMethod.delete,
      route: route,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
      version: version,
    );
  }

  Future<Response<dynamic>> sendRequest({
    required HttpMethod method,
    required String route,
    required int version,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    final path = '${_constants.refUrl}/api$route';

    final updatedHeaders = headers ?? <String, dynamic>{}
      ..putIfAbsent('API-Version', () => version);

    switch (method) {
      case HttpMethod.get:
        return _dio.get<dynamic>(
          path,
          queryParameters: queryParameters,
          options: Options(headers: updatedHeaders),
        );
      case HttpMethod.post:
        return _dio.post<dynamic>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: updatedHeaders),
        );
      case HttpMethod.patch:
        return _dio.patch<dynamic>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: updatedHeaders),
        );
      case HttpMethod.delete:
        return _dio.delete<dynamic>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: updatedHeaders),
        );
      case HttpMethod.put:
        return _dio.put<dynamic>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: updatedHeaders),
        );
    }
  }
}
