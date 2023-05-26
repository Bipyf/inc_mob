import 'dart:convert';

import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/repositories/add_incontrol_respository.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/entities/request_model.dart';
import 'package:incontrol_flutter/core/domain/services/add_incontrol_service.dart';
import 'package:incontrol_flutter/core/domain/services/getReqServ.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GetReqServ)
class GetReq implements GetReqServ {
  final AddincontrolRepository addincontrolRepository;

  GetReq(this.addincontrolRepository);

  @override
  Future<List<RequestModel>> getincontrolLevels() async {
    Response response = await addincontrolRepository.getincontrolLevels(Endpoints.requests);
    print(response.data[0].runtimeType);
    List<RequestModel> incontrolLevelsList = [];
    for (var data in response.data) {
      print(data);
      incontrolLevelsList.add(RequestModel.fromMap(data));
    } 
    return incontrolLevelsList;
  }
  @override
  Future<void> put(data) async {
    
    Response response = await addincontrolRepository.putincontrolLevels(Endpoints.forsys, data);
  }
  @override
  Future<void> delete(data) async {
    
    Response response = await addincontrolRepository.deleteincontrolLevels(Endpoints.forsys, data);
  }
}
