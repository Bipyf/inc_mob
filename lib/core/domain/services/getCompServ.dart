import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';

abstract class GetCompServ{
  Future<List<ComputerModel>> getincontrolLevels();
}
