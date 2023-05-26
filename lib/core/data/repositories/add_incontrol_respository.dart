import 'package:incontrol_flutter/core/config/repository_config.dart';
import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/network/api/services/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class AddincontrolRepository {
  Future<Response> getincontrolLevels(var path);
  Future<Response> postincontrolLevels(var path, var data);
  Future<Response> putincontrolLevels(var path, var data);
  Future<Response> deleteincontrolLevels(var path, var data);
}

@Singleton(as: AddincontrolRepository)
class AddincontrolRepositoryImpl implements AddincontrolRepository {
  final RepositoryConfig repositoryConfig;
  final DioService dioService;
  AddincontrolRepositoryImpl({
    required this.repositoryConfig,
    required this.dioService,
  });

  @override
  Future<Response> getincontrolLevels(path) async {
    return dioService.getFromApi(path: path);
  }
  @override
  Future<Response> postincontrolLevels(path, data) async {
    return dioService.sendToApi(path: path, data: data);
  }
  @override
  Future<Response> putincontrolLevels(path, data) async {
    return dioService.putToApi(path: path, data: data);
  }
  @override
  Future<Response> deleteincontrolLevels(path, data) async {
    return dioService.deleteFromApi(path: path, data: data);
  }
}
