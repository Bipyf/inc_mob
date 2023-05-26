// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_recovery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoveryPasswordState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  RecoveryStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecoveryPasswordStateCopyWith<RecoveryPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryPasswordStateCopyWith<$Res> {
  factory $RecoveryPasswordStateCopyWith(RecoveryPasswordState value,
          $Res Function(RecoveryPasswordState) then) =
      _$RecoveryPasswordStateCopyWithImpl<$Res, RecoveryPasswordState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      RecoveryStatus status,
      String? error});
}

/// @nodoc
class _$RecoveryPasswordStateCopyWithImpl<$Res,
        $Val extends RecoveryPasswordState>
    implements $RecoveryPasswordStateCopyWith<$Res> {
  _$RecoveryPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecoveryStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecoveryPasswordStateCopyWith<$Res>
    implements $RecoveryPasswordStateCopyWith<$Res> {
  factory _$$_RecoveryPasswordStateCopyWith(_$_RecoveryPasswordState value,
          $Res Function(_$_RecoveryPasswordState) then) =
      __$$_RecoveryPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      RecoveryStatus status,
      String? error});
}

/// @nodoc
class __$$_RecoveryPasswordStateCopyWithImpl<$Res>
    extends _$RecoveryPasswordStateCopyWithImpl<$Res, _$_RecoveryPasswordState>
    implements _$$_RecoveryPasswordStateCopyWith<$Res> {
  __$$_RecoveryPasswordStateCopyWithImpl(_$_RecoveryPasswordState _value,
      $Res Function(_$_RecoveryPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$_RecoveryPasswordState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecoveryStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RecoveryPasswordState implements _RecoveryPasswordState {
  const _$_RecoveryPasswordState(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.status,
      this.error});

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final RecoveryStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'RecoveryPasswordState(email: $email, password: $password, confirmPassword: $confirmPassword, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecoveryPasswordState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassword, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecoveryPasswordStateCopyWith<_$_RecoveryPasswordState> get copyWith =>
      __$$_RecoveryPasswordStateCopyWithImpl<_$_RecoveryPasswordState>(
          this, _$identity);
}

abstract class _RecoveryPasswordState implements RecoveryPasswordState {
  const factory _RecoveryPasswordState(
      {required final String email,
      required final String password,
      required final String confirmPassword,
      required final RecoveryStatus status,
      final String? error}) = _$_RecoveryPasswordState;

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  RecoveryStatus get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_RecoveryPasswordStateCopyWith<_$_RecoveryPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
