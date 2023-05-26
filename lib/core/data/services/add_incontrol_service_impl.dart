import 'dart:convert';

import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/repositories/add_incontrol_respository.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/services/add_incontrol_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AddincontrolService)
class AddincontrolServiceImpl implements AddincontrolService {
  final AddincontrolRepository addincontrolRepository;

  AddincontrolServiceImpl(this.addincontrolRepository);

  @override
  Future<List<PositionModel>> getincontrolLevels() async {
    Response response = await addincontrolRepository.getincontrolLevels(Endpoints.position);
    print(response.data[0].runtimeType);
    List<PositionModel> incontrolLevelsList = [];
    for (var data in response.data) {
      print(data);
      incontrolLevelsList.add(PositionModel.fromMap(data));
    } 
    return incontrolLevelsList;
  }
  @override
  Future<List<PositionModel>> postincontrolLevels() async {
    // TODO: implement postincontrolLevels
    throw UnimplementedError();
  }
  @override
  Future<List<PositionModel>> putincontrolLevels() async {
    // TODO: implement postincontrolLevels
    throw UnimplementedError();
  }
  @override
  Future<List<PositionModel>> deleteincontrolLevels() async {
    // TODO: implement postincontrolLevels
    throw UnimplementedError();
  }
}
