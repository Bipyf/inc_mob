import 'package:incontrol_flutter/core/domain/entities/enums/login_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

enum SignUpStatus { initial, submitting, success, error }

@Freezed()
class SignUpState with _$SignUpState {

  const factory SignUpState.welcome({
    @Default(SignUpStatus.initial) SignUpStatus status,
  }) = SignUpStateWelcome;

  const factory SignUpState.signup({
    @Default('') String fullName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(SignUpStatus.initial) SignUpStatus status,
    String? error,
  }) = SignUpStateSignUp;

  const factory SignUpState.login({
    @Default('') String fullName,
    @Default('') String email,
    @Default('') String password,
    @Default(LoginStatus.initial) LoginStatus status,
    String? errorText,
  }) = SignUpStateLogin;
//
// const factory SignUpState({
//   required String fullName,
//   required String email,
//   required String password,
//   required String confirmPassword,
//   required SignUpStatus status,
//   String? error,
//   User? user,
// }) = _SignUpState;
// factory SignUpState.initial() async {
//   return const SignUpState(
//       fullName: "",
//       email: "",
//       password: "",
//       confirmPassword: "",
//       status: SignUpStatus.initial);
// }
}
