import 'package:incontrol_flutter/core/domain/entities/position_model.dart';

abstract class AddincontrolService {
  Future<List<PositionModel>> getincontrolLevels();
  Future<List<PositionModel>> postincontrolLevels();
  Future<List<PositionModel>> deleteincontrolLevels();
  Future<List<PositionModel>> putincontrolLevels();
}
