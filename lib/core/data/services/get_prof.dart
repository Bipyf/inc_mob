import 'dart:convert';

import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/repositories/add_incontrol_respository.dart';
import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';
import 'package:incontrol_flutter/core/domain/services/getProfServ.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GetProfServ)
class GetProf implements GetProfServ {
  final AddincontrolRepository addincontrolRepository;

  GetProf(this.addincontrolRepository);

  @override
  Future<List<EmployeeModel>> getincontrolLevels() async {
    Response response = await addincontrolRepository.getincontrolLevels(Endpoints.profile);
    print(response.data[0].runtimeType);
    List<EmployeeModel> incontrolLevelsList = [];
    for (var data in response.data) {
      print(data);
      incontrolLevelsList.add(EmployeeModel.fromMap(data));
    } 
    return incontrolLevelsList;
  }
}
