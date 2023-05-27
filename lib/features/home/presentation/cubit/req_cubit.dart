// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:incontrol_flutter/core/domain/entities/computer_model.dart';
import 'package:incontrol_flutter/core/domain/entities/request_model.dart';
import 'package:incontrol_flutter/core/domain/services/getCompServ.dart';
import 'package:incontrol_flutter/core/domain/services/getReqServ.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/req_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:incontrol_flutter/features/home/presentation/cubit/comp_state.dart';

@injectable
class ReqCubit extends Cubit<ReqState> {
  ReqCubit(
    this.addincontrolService,
  ) : super(const ReqState()) {
    getincontrolList();
  }
  final GetReqServ addincontrolService;
  Future<void> getincontrolList() async {
    emit(state.copyWith(incontrolLevelsList: null));

    final List<RequestModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();

    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }

  Future<void> put(data) async {
    await addincontrolService.put(data);
    emit(state.copyWith(incontrolLevelsList: null));
    await getincontrolList();
  }

  Future<void> delete(data) async {
    await addincontrolService.delete(data);
    emit(state.copyWith(incontrolLevelsList: null));
    await getincontrolList();
  }
}
