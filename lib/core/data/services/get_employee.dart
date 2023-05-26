import 'dart:convert';

import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/repositories/add_incontrol_respository.dart';
import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';
import 'package:incontrol_flutter/core/domain/services/getEmpServ.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GetEmpServ)
class GetEmp implements GetEmpServ {
  final AddincontrolRepository addincontrolRepository;

  GetEmp(this.addincontrolRepository);

  @override
  Future<List<EmployeeModel>> getincontrolLevels() async {
    Response response = await addincontrolRepository.getincontrolLevels(Endpoints.employee);
    print(response.data[0].runtimeType);
    List<EmployeeModel> incontrolLevelsList = [];
    for (var data in response.data) {
      print(data);
      incontrolLevelsList.add(EmployeeModel.fromMap(data));
    } 
    return incontrolLevelsList;
  }
}
