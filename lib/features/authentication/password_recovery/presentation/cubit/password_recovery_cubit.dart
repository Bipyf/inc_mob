import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'password_recovery_state.dart';

@singleton
class RecoveryPasswordCubit extends Cubit<RecoveryPasswordState> {
  RecoveryPasswordCubit() : super(RecoveryPasswordState.initial());

  void emailChanged(String value) {
    emit(state.copyWith(email: value, status: RecoveryStatus.initial));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, status: RecoveryStatus.initial));
  }

  void confirmPasswordChanged(String value) {
    emit(
        state.copyWith(confirmPassword: value, status: RecoveryStatus.initial));
  }
}
