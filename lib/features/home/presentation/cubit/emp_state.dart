import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'emp_state.freezed.dart';

@Freezed()
class EmpState with _$EmpState {
  const factory EmpState({
    @Default([]) List<EmployeeModel> incontrolLevelsList,
  }) = _EmpState;
}
