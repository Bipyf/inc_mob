import 'dart:convert';

import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/repositories/add_incontrol_respository.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/entities/workplace_model.dart';
import 'package:incontrol_flutter/core/domain/services/add_incontrol_service.dart';
import 'package:incontrol_flutter/core/domain/services/getJobServ.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GetJobServ)
class GetJob implements GetJobServ {
  final AddincontrolRepository addincontrolRepository;

  GetJob(this.addincontrolRepository);

  @override
  Future<List<WorkplaceModel>> getincontrolLevels() async {
    Response response = await addincontrolRepository.getincontrolLevels(Endpoints.jobcat);
    print(response.data[0].runtimeType);
    List<WorkplaceModel> incontrolLevelsList = [];
    for (var data in response.data) {
      print(data);
      incontrolLevelsList.add(WorkplaceModel.fromMap(data));
    } 
    return incontrolLevelsList;
  }
}
