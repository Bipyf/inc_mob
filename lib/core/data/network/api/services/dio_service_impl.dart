import 'dart:developer';

import 'package:incontrol_flutter/core/data/network/api/repositories/dio_repository.dart';
import 'package:incontrol_flutter/core/data/network/api/services/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../dio_exception.dart';

final _secureStorage = FlutterSecureStorage(); 

@Singleton(as: DioService)
class DioServiceImpl implements DioService {
  DioServiceImpl(this.dioRepository);

  final DioRepository dioRepository;

  @override
  Future<Response> sendToApi({
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
     var token = await _secureStorage.read(
    key: 'idToken',
  );

      // debugPrint(token.toString(), wrapWidth: 3000);
      final pattern = RegExp('.{1,800}');
      pattern
          .allMatches(token.toString())
          .forEach((match) => print(match.group(0)));
      if (token == null) token = '';
      else token = "Token $token";
      final response = await DioRepositoryImpl().sendToApi(
        token: token,
        path: path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioError catch (e) {
      // print(e.response);
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  @override
  Future<Response> getFromApi({
    required path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final token =  await _secureStorage.read(
    key: 'idToken',
  );;
      final response = await DioRepositoryImpl().getFromApi(
        token: "Token " + token!,
        path: path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
  @override
  Future<Response> deleteFromApi({
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final token = await _secureStorage.read(
    key: 'idToken',
  );;
      final response = await DioRepositoryImpl().deleteFromApi(
        token: "Token " + token!,
        path: path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      print('thiserror');
      throw errorMessage;
    }
  }
  @override
  Future<Response> putToApi({
    required path,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final token = await await _secureStorage.read(
    key: 'idToken',
  );;
      final response = await DioRepositoryImpl().putToApi(
        token: "Token " + token!,
        path: path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
