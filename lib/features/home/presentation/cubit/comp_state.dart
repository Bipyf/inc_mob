import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'comp_state.freezed.dart';

@Freezed()
class CompState with _$CompState {
  const factory CompState({
  List<ComputerModel>? incontrolLevelsList,
  }) = _CompState;
}
