import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@Freezed()
class ProfileState with _$ProfileState {
  const factory ProfileState({
    List<EmployeeModel>? incontrolLevelsList,
  }) = _ProfileState;
}
