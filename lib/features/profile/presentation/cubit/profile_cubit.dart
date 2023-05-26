import 'package:incontrol_flutter/core/domain/entities/employee_model.dart';
import 'package:incontrol_flutter/core/domain/services/authentication_service.dart';
import 'package:incontrol_flutter/core/domain/services/getProfServ.dart';
import 'package:incontrol_flutter/features/profile/presentation/cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.authenticationService, this.addincontrolService)
      : super(const ProfileState()) {
    getincontrolList();
  }

  final AuthenticationService authenticationService;
  final GetProfServ addincontrolService;

  Future<void> signOut() async {
    await authenticationService.signOut();
  }

  Future<void> getincontrolList() async {
    emit(state.copyWith(incontrolLevelsList: null));
    final List<EmployeeModel> incontrolLevel =
        await addincontrolService.getincontrolLevels();
    print('profinfo' + incontrolLevel.toString());
    emit(state.copyWith(incontrolLevelsList: incontrolLevel));
  }
}
