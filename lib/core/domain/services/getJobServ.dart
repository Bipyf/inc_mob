import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/entities/workplace_model.dart';

abstract class GetJobServ {
  Future<List<WorkplaceModel>> getincontrolLevels();
}
