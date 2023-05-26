// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:incontrol_flutter/core/domain/services/add_incontrol_service.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.addincontrolService,
  ) : super(const HomeState()) {
    getincontrolList();
  }
  final AddincontrolService addincontrolService;
  Future<void> getincontrolList() async {
    final List<PositionModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();
    
    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }
}
