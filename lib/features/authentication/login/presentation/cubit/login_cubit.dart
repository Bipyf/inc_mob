// import 'package:bloc/bloc.dart';
// import 'package:incontrol_flutter/core/data/repositories/auth_repository.dart';
// import 'package:incontrol_flutter/core/domain/services/authentication_service.dart';
// import 'package:incontrol_flutter/features/login/presentation/cubit/login_page_state.dart';
// import 'package:injectable/injectable.dart';
//
// @singleton
// class LoginCubit extends Cubit<LoginPageState> {
//   LoginCubit(this.authenticationService) : super(LoginPageState.initial());
//   final AuthenticationService authenticationService;
//
//   void onEmailChanged(String value) {
//     emit(state.copyWith(email: value, status: LoginStatus.initial));
//   }
//
//   void onPasswordChanged(String value) {
//     emit(state.copyWith(password: value, status: LoginStatus.initial));
//   }
//
//   Future<void> loginWithCredentials() async {
//     if (state.email.isEmpty || state.password.isEmpty) return;
//     if (state.status == LoginStatus.submitting) return;
//     emit(state.copyWith(status: LoginStatus.submitting));
//     final response = await authenticationService.loginWithEmailAndPassword(
//         email: state.email, password: state.password);
//     response.fold((l) {
//       emit(state.copyWith(status: LoginStatus.error, errorText: '$l'));
//     }, (r) {
//       emit(state.copyWith(status: LoginStatus.success));
//     });
//   }
//
//   Future<void> loginWithGoogle() async {
//     if (state.status == LoginStatus.submitting) return;
//     emit(state.copyWith(status: LoginStatus.submitting));
//     await authenticationService.signInWithGoogle();
//     emit(state.copyWith(status: LoginStatus.success));
//   }
//
//   Future<void> signOut() async {
//     await authenticationService.signOut();
//     emit(state.copyWith(status: LoginStatus.initial));
//   }
// }
