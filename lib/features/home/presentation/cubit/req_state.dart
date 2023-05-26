import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/entities/request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'req_state.freezed.dart';

@Freezed()
class ReqState with _$ReqState {
  const factory ReqState({
    List<RequestModel>? incontrolLevelsList,
  }) = _ReqState;
}
