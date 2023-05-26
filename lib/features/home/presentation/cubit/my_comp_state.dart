import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_comp_state.freezed.dart';

@Freezed()
class MyCompState with _$MyCompState {
  const factory MyCompState({
   List<ComputerModel>? incontrolLevelsList,
  }) = _MyCompState;
}
