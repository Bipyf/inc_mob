// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  Enum get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpStatus status) welcome,
    required TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)
        signup,
    required TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)
        login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpStatus status)? welcome,
    TResult? Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult? Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpStatus status)? welcome,
    TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateWelcome value) welcome,
    required TResult Function(SignUpStateSignUp value) signup,
    required TResult Function(SignUpStateLogin value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateWelcome value)? welcome,
    TResult? Function(SignUpStateSignUp value)? signup,
    TResult? Function(SignUpStateLogin value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateWelcome value)? welcome,
    TResult Function(SignUpStateSignUp value)? signup,
    TResult Function(SignUpStateLogin value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStateWelcomeCopyWith<$Res> {
  factory _$$SignUpStateWelcomeCopyWith(_$SignUpStateWelcome value,
          $Res Function(_$SignUpStateWelcome) then) =
      __$$SignUpStateWelcomeCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpStatus status});
}

/// @nodoc
class __$$SignUpStateWelcomeCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateWelcome>
    implements _$$SignUpStateWelcomeCopyWith<$Res> {
  __$$SignUpStateWelcomeCopyWithImpl(
      _$SignUpStateWelcome _value, $Res Function(_$SignUpStateWelcome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SignUpStateWelcome(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignUpStatus,
    ));
  }
}

/// @nodoc

class _$SignUpStateWelcome implements SignUpStateWelcome {
  const _$SignUpStateWelcome({this.status = SignUpStatus.initial});

  @override
  @JsonKey()
  final SignUpStatus status;

  @override
  String toString() {
    return 'SignUpState.welcome(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateWelcome &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateWelcomeCopyWith<_$SignUpStateWelcome> get copyWith =>
      __$$SignUpStateWelcomeCopyWithImpl<_$SignUpStateWelcome>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpStatus status) welcome,
    required TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)
        signup,
    required TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)
        login,
  }) {
    return welcome(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpStatus status)? welcome,
    TResult? Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult? Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
  }) {
    return welcome?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpStatus status)? welcome,
    TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
    required TResult orElse(),
  }) {
    if (welcome != null) {
      return welcome(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateWelcome value) welcome,
    required TResult Function(SignUpStateSignUp value) signup,
    required TResult Function(SignUpStateLogin value) login,
  }) {
    return welcome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateWelcome value)? welcome,
    TResult? Function(SignUpStateSignUp value)? signup,
    TResult? Function(SignUpStateLogin value)? login,
  }) {
    return welcome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateWelcome value)? welcome,
    TResult Function(SignUpStateSignUp value)? signup,
    TResult Function(SignUpStateLogin value)? login,
    required TResult orElse(),
  }) {
    if (welcome != null) {
      return welcome(this);
    }
    return orElse();
  }
}

abstract class SignUpStateWelcome implements SignUpState {
  const factory SignUpStateWelcome({final SignUpStatus status}) =
      _$SignUpStateWelcome;

  @override
  SignUpStatus get status;
  @JsonKey(ignore: true)
  _$$SignUpStateWelcomeCopyWith<_$SignUpStateWelcome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateSignUpCopyWith<$Res> {
  factory _$$SignUpStateSignUpCopyWith(
          _$SignUpStateSignUp value, $Res Function(_$SignUpStateSignUp) then) =
      __$$SignUpStateSignUpCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fullName,
      String email,
      String password,
      String confirmPassword,
      SignUpStatus status,
      String? error});
}

/// @nodoc
class __$$SignUpStateSignUpCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSignUp>
    implements _$$SignUpStateSignUpCopyWith<$Res> {
  __$$SignUpStateSignUpCopyWithImpl(
      _$SignUpStateSignUp _value, $Res Function(_$SignUpStateSignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$SignUpStateSignUp(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
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
              as SignUpStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpStateSignUp implements SignUpStateSignUp {
  const _$SignUpStateSignUp(
      {this.fullName = '',
      this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.status = SignUpStatus.initial,
      this.error});

  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final SignUpStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'SignUpState.signup(fullName: $fullName, email: $email, password: $password, confirmPassword: $confirmPassword, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSignUp &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, email, password, confirmPassword, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateSignUpCopyWith<_$SignUpStateSignUp> get copyWith =>
      __$$SignUpStateSignUpCopyWithImpl<_$SignUpStateSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpStatus status) welcome,
    required TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)
        signup,
    required TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)
        login,
  }) {
    return signup(fullName, email, password, confirmPassword, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpStatus status)? welcome,
    TResult? Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult? Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
  }) {
    return signup?.call(
        fullName, email, password, confirmPassword, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpStatus status)? welcome,
    TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(fullName, email, password, confirmPassword, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateWelcome value) welcome,
    required TResult Function(SignUpStateSignUp value) signup,
    required TResult Function(SignUpStateLogin value) login,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateWelcome value)? welcome,
    TResult? Function(SignUpStateSignUp value)? signup,
    TResult? Function(SignUpStateLogin value)? login,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateWelcome value)? welcome,
    TResult Function(SignUpStateSignUp value)? signup,
    TResult Function(SignUpStateLogin value)? login,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSignUp implements SignUpState {
  const factory SignUpStateSignUp(
      {final String fullName,
      final String email,
      final String password,
      final String confirmPassword,
      final SignUpStatus status,
      final String? error}) = _$SignUpStateSignUp;

  String get fullName;
  String get email;
  String get password;
  String get confirmPassword;
  @override
  SignUpStatus get status;
  String? get error;
  @JsonKey(ignore: true)
  _$$SignUpStateSignUpCopyWith<_$SignUpStateSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateLoginCopyWith<$Res> {
  factory _$$SignUpStateLoginCopyWith(
          _$SignUpStateLogin value, $Res Function(_$SignUpStateLogin) then) =
      __$$SignUpStateLoginCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fullName,
      String email,
      String password,
      LoginStatus status,
      String? errorText});
}

/// @nodoc
class __$$SignUpStateLoginCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateLogin>
    implements _$$SignUpStateLoginCopyWith<$Res> {
  __$$SignUpStateLoginCopyWithImpl(
      _$SignUpStateLogin _value, $Res Function(_$SignUpStateLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? errorText = freezed,
  }) {
    return _then(_$SignUpStateLogin(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpStateLogin implements SignUpStateLogin {
  const _$SignUpStateLogin(
      {this.fullName = '',
      this.email = '',
      this.password = '',
      this.status = LoginStatus.initial,
      this.errorText});

  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final LoginStatus status;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'SignUpState.login(fullName: $fullName, email: $email, password: $password, status: $status, errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateLogin &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, email, password, status, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateLoginCopyWith<_$SignUpStateLogin> get copyWith =>
      __$$SignUpStateLoginCopyWithImpl<_$SignUpStateLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpStatus status) welcome,
    required TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)
        signup,
    required TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)
        login,
  }) {
    return login(fullName, email, password, status, errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpStatus status)? welcome,
    TResult? Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult? Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
  }) {
    return login?.call(fullName, email, password, status, errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpStatus status)? welcome,
    TResult Function(String fullName, String email, String password,
            String confirmPassword, SignUpStatus status, String? error)?
        signup,
    TResult Function(String fullName, String email, String password,
            LoginStatus status, String? errorText)?
        login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(fullName, email, password, status, errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateWelcome value) welcome,
    required TResult Function(SignUpStateSignUp value) signup,
    required TResult Function(SignUpStateLogin value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateWelcome value)? welcome,
    TResult? Function(SignUpStateSignUp value)? signup,
    TResult? Function(SignUpStateLogin value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateWelcome value)? welcome,
    TResult Function(SignUpStateSignUp value)? signup,
    TResult Function(SignUpStateLogin value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLogin implements SignUpState {
  const factory SignUpStateLogin(
      {final String fullName,
      final String email,
      final String password,
      final LoginStatus status,
      final String? errorText}) = _$SignUpStateLogin;

  String get fullName;
  String get email;
  String get password;
  @override
  LoginStatus get status;
  String? get errorText;
  @JsonKey(ignore: true)
  _$$SignUpStateLoginCopyWith<_$SignUpStateLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
