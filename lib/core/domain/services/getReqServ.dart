import 'package:incontrol_flutter/core/domain/entities/request_model.dart';

abstract class GetReqServ {
  Future<List<RequestModel>> getincontrolLevels();
  Future<void> put(var data);
  Future<void> delete(var data);
  
}
