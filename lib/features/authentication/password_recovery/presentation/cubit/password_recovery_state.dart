import 'package:freezed_annotation/freezed_annotation.dart';
part 'password_recovery_state.freezed.dart';

enum RecoveryStatus { initial, submitting, success, error }

@Freezed()
class RecoveryPasswordState with _$RecoveryPasswordState {
  const factory RecoveryPasswordState({
    required String email,
    required String password,
    required String confirmPassword,
    required RecoveryStatus status,
    String? error,
  }) = _RecoveryPasswordState;
  factory RecoveryPasswordState.initial() {
    return const RecoveryPasswordState(
        email: "",
        password: "",
        confirmPassword: "",
        status: RecoveryStatus.initial);
  }
}
