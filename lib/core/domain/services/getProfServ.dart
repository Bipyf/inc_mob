import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';

abstract class GetProfServ {
  Future<List<EmployeeModel>> getincontrolLevels();
}
