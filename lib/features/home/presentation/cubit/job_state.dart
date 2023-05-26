import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/entities/workplace_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'job_state.freezed.dart';

@Freezed()
class JobState with _$JobState {
  const factory JobState({
    List<WorkplaceModel>? incontrolLevelsList,
  }) = _JobState;
}
