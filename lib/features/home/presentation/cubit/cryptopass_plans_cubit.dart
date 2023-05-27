import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/services/add_incontrol_service.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/incontrol_plans_state.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class incontrolPlansCubit extends Cubit<HomeState> {
  incontrolPlansCubit(this.addincontrolService) : super(const HomeState());
  final AddincontrolService addincontrolService;

  Future<void> getincontrolList() async {
    final List<PositionModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();
    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }
}
