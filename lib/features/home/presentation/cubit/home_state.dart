import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<PositionModel> incontrolLevelsList,
  }) = _HomeState;
}
