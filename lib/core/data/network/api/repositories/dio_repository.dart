import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class DioRepository {
  Future<Response> sendToApi({
    required token,
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });
  Future<Response> getFromApi({
    required token,
    required path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });
  Future<Response> deleteFromApi({
    required token,
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });
  Future<Response> putToApi({
    required token,
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });
  
}

@Singleton(as: DioRepository)
class DioRepositoryImpl implements DioRepository {
  @override
  Future<Response> sendToApi({
    required token,
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var dio = Dio();
      dio.options.baseUrl = Endpoints.baseUrl;
      dio.options.headers['Authorization'] = token;
      final response = dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<Response> getFromApi({
    required token,
    required path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var dio = Dio();
      dio.options.baseUrl = Endpoints.baseUrl;
      dio.options.headers['accept'] = 'application/json';
      dio.options.headers['Authorization'] = token;
      final response = dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
  @override
  Future<Response> deleteFromApi({
    required token,
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var dio = Dio();
      dio.options.baseUrl = Endpoints.baseUrl;
      dio.options.headers['Authorization'] = token;
      final response = dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
  @override
  Future<Response> putToApi({
    required token,
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var dio = Dio();
      dio.options.baseUrl = Endpoints.baseUrl;
      dio.options.headers['Authorization'] = token;
      final response = dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
