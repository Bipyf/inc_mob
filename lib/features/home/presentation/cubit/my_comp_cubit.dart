// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:incontrol_flutter/core/data/services/get_mycomp.dart';
import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/services/getCompServ%20copy.dart';
import 'package:incontrol_flutter/core/domain/services/getCompServ.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/my_comp_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:incontrol_flutter/features/home/presentation/cubit/comp_state.dart';

@injectable
class MyCompCubit extends Cubit<MyCompState> {
  MyCompCubit(
    this.addincontrolService,
  ) : super(const MyCompState()) {
    getincontrolList();
  }
  final GetMyCompServ addincontrolService;
  Future<void> getincontrolList() async {
    emit(state.copyWith(incontrolLevelsList: null));
    final List<ComputerModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();

    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }

  Future<void> post(data) async {
    await addincontrolService.post(data);
    emit(state.copyWith(incontrolLevelsList: null));
    await getincontrolList();
  }
}
