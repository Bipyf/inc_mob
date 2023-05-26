// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:incontrol_flutter/core/data/services/get_workplace.dart';
import 'package:incontrol_flutter/core/domain/entities/position_model.dart';
import 'package:incontrol_flutter/core/domain/entities/workplace_model.dart';
import 'package:incontrol_flutter/core/domain/services/getJobServ.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:incontrol_flutter/core/domain/services/add_incontrol_service.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/job_state.dart';

@injectable
class JobCubit extends Cubit<JobState> {
  JobCubit(
    this.addincontrolService,
  ) : super(const JobState()) {
    getincontrolList();
  }
  final GetJobServ addincontrolService;
  Future<void> getincontrolList() async {
    emit(state.copyWith(incontrolLevelsList: null));

    final List<WorkplaceModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();

    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }
}
