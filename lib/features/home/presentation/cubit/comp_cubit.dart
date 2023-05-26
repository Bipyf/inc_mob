// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/services/getCompServ.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:incontrol_flutter/features/home/presentation/cubit/comp_state.dart';

@injectable
class CompCubit extends Cubit<CompState> {
  CompCubit(
    this.addincontrolService,
  ) : super(const CompState()) {
    getincontrolList();
  }
  final GetCompServ addincontrolService;
  Future<void> getincontrolList() async {
    emit(state.copyWith(incontrolLevelsList: null));
    final List<ComputerModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();
    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }
}
