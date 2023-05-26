import 'dart:convert';

import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/repositories/add_incontrol_respository.dart';
import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/services/getCompServ.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GetCompServ)
class GetComputer implements GetCompServ {
  final AddincontrolRepository addincontrolRepository;

  GetComputer(this.addincontrolRepository);

  @override
  Future<List<ComputerModel>> getincontrolLevels() async {
    Response response = await addincontrolRepository.getincontrolLevels(Endpoints.computer);
    print(response.data[0].runtimeType);
    List<ComputerModel> incontrolLevelsList = [];
    for (var data in response.data) {
      print(data);
      incontrolLevelsList.add(ComputerModel.fromMap(data));
    } 
    return incontrolLevelsList;
  }
}
