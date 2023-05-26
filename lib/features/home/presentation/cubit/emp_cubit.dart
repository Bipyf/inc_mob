// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';
import 'package:incontrol_flutter/core/domain/services/getEmpServ.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/emp_state.dart';

@injectable
class EmpCubit extends Cubit<EmpState> {
  EmpCubit(
    this.addincontrolService,
  ) : super(const EmpState()) {
    getincontrolList();
  }
  final GetEmpServ addincontrolService;
  Future<void> getincontrolList() async {
    final List<EmployeeModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();
    
    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }
}
