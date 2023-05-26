import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';

abstract class GetMyCompServ{
  Future<List<ComputerModel>> getincontrolLevels();
  Future<void> post(var data);
}
