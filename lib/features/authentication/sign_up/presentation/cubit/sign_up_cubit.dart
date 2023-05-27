import 'package:bloc/bloc.dart';
import 'package:incontrol_flutter/core/domain/entities/enums/login_status.dart';
import 'package:incontrol_flutter/core/domain/services/authentication_service.dart';
import 'package:incontrol_flutter/features/authentication/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(
    this.authenticationService,
  ) : super(const SignUpState.welcome());

  final AuthenticationService authenticationService;

  Future<void> moveToSignUp() async {
    emit(const SignUpStateSignUp());
  }

  Future<void> moveToLogin() async {
    emit(const SignUpStateLogin());
  }

  Future<void> nameChanged(String value) async {
    final _state = state;
    if (_state is! SignUpStateSignUp) return;
    emit(_state.copyWith(fullName: value, status: SignUpStatus.initial));
  }

  Future<void> emailChanged(String value) async {
    final _state = state;
    if (_state is! SignUpStateSignUp) return;
    emit(_state.copyWith(email: value, status: SignUpStatus.initial));
  }

  Future<void> passwordChanged(String value) async {
    final _state = state;
    if (_state is! SignUpStateSignUp) return;
    emit(_state.copyWith(password: value, status: SignUpStatus.initial));
  }

  Future<void> confirmPasswordChanged(String value) async {
    final _state = state;
    if (_state is! SignUpStateSignUp) return;
    emit(_state.copyWith(confirmPassword: value, status: SignUpStatus.initial));
  }

  Future<void> signUpWithCredentials() async {
    final _state = state;
    if (_state is! SignUpStateSignUp) return;
    if (_state.password != _state.confirmPassword) {
      emit(_state.copyWith(
          error: "passwordsNotMatch", status: SignUpStatus.error));
      return;
    }
    try {
      emit(_state.copyWith(status: SignUpStatus.submitting));
      var response = await authenticationService.signUp(
          email: _state.email,
          password: _state.password,
          fullName: _state.fullName);
      response.fold(
        (l) async {
          switch (l) {
            case "invalidEmail":
              emit(_state.copyWith(
                  status: SignUpStatus.error, error: "invalidEmail"));
              break;
            case "emailAlreadyInUse":
              emit(_state.copyWith(
                  status: SignUpStatus.error, error: "emailAlreadyInUse"));
              break;
          }
        },
        (r) async {
          emit(_state.copyWith(status: SignUpStatus.success, error: null));
        },
      );
    } catch (_) {}
  }

  // login stuff
  Future<void> onEmailChanged(String value) async {
    final _state = state;
    if (_state is! SignUpStateLogin) return;
    emit(_state.copyWith(email: value, status: LoginStatus.initial));
  }

  Future<void> onPasswordChanged(String value) async {
    final _state = state;
    if (_state is! SignUpStateLogin) return;

    emit(_state.copyWith(password: value, status: LoginStatus.initial));
  }

  Future<void> loginWithCredentials() async {
    final _state = state;
    if (_state is! SignUpStateLogin) return;
    if (_state.email.isEmpty || _state.password.isEmpty) return;
    if (_state.status == LoginStatus.submitting) return;
    emit(_state.copyWith(status: LoginStatus.submitting));
    final response = await authenticationService.loginWithEmailAndPassword(
        email: _state.email, password: _state.password);
    response.fold((l) {
      print("proeb");
      emit(_state.copyWith(status: LoginStatus.error, errorText: 'Error: Wrong username or password'));
    }, (r) async {
      print("succ");
      emit(_state.copyWith(status:  LoginStatus.success));
    });
  }

  Future<void> loginWithGoogle(bool mode) async {
    if (mode) {
      final _state = state as SignUpStateLogin;
      emit(_state.copyWith(status: LoginStatus.submitting));
      final response = await authenticationService.signInWithGoogle();
      response.fold((l) {
        emit(_state.copyWith(status: LoginStatus.initial,));
      }, (r) async {
        emit(_state.copyWith(status: LoginStatus.success));
      });
    } else {
      final _state = state as SignUpStateSignUp;
      emit(_state.copyWith(status: SignUpStatus.submitting));
      await authenticationService.signInWithGoogle();
      emit(_state.copyWith(status: SignUpStatus.success));
    }
  }

  Future<void> loginWithApple(bool mode) async {
    if (mode) {
      final _state = state as SignUpStateLogin;
      emit(_state.copyWith(status: LoginStatus.submitting));
      await authenticationService.signInWithApple();
      emit(_state.copyWith(status: LoginStatus.success));
    } else {
      final _state = state as SignUpStateSignUp;
      emit(_state.copyWith(status: SignUpStatus.submitting));
      await authenticationService.signInWithApple();
      emit(_state.copyWith(status: SignUpStatus.success));
    }
  }
  Future<void> signOut() async {
     final _state = state as SignUpStateLogin;
      emit(_state.copyWith(status: LoginStatus.initial));
     await authenticationService.signOut();
    
  }
}
