// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmpState {
  List<EmployeeModel> get incontrolLevelsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmpStateCopyWith<EmpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmpStateCopyWith<$Res> {
  factory $EmpStateCopyWith(EmpState value, $Res Function(EmpState) then) =
      _$EmpStateCopyWithImpl<$Res, EmpState>;
  @useResult
  $Res call({List<EmployeeModel> incontrolLevelsList});
}

/// @nodoc
class _$EmpStateCopyWithImpl<$Res, $Val extends EmpState>
    implements $EmpStateCopyWith<$Res> {
  _$EmpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incontrolLevelsList = null,
  }) {
    return _then(_value.copyWith(
      incontrolLevelsList: null == incontrolLevelsList
          ? _value.incontrolLevelsList
          : incontrolLevelsList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmpStateCopyWith<$Res> implements $EmpStateCopyWith<$Res> {
  factory _$$_EmpStateCopyWith(
          _$_EmpState value, $Res Function(_$_EmpState) then) =
      __$$_EmpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EmployeeModel> incontrolLevelsList});
}

/// @nodoc
class __$$_EmpStateCopyWithImpl<$Res>
    extends _$EmpStateCopyWithImpl<$Res, _$_EmpState>
    implements _$$_EmpStateCopyWith<$Res> {
  __$$_EmpStateCopyWithImpl(
      _$_EmpState _value, $Res Function(_$_EmpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incontrolLevelsList = null,
  }) {
    return _then(_$_EmpState(
      incontrolLevelsList: null == incontrolLevelsList
          ? _value._incontrolLevelsList
          : incontrolLevelsList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$_EmpState implements _EmpState {
  const _$_EmpState({final List<EmployeeModel> incontrolLevelsList = const []})
      : _incontrolLevelsList = incontrolLevelsList;

  final List<EmployeeModel> _incontrolLevelsList;
  @override
  @JsonKey()
  List<EmployeeModel> get incontrolLevelsList {
    if (_incontrolLevelsList is EqualUnmodifiableListView)
      return _incontrolLevelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incontrolLevelsList);
  }

  @override
  String toString() {
    return 'EmpState(incontrolLevelsList: $incontrolLevelsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmpState &&
            const DeepCollectionEquality()
                .equals(other._incontrolLevelsList, _incontrolLevelsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_incontrolLevelsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmpStateCopyWith<_$_EmpState> get copyWith =>
      __$$_EmpStateCopyWithImpl<_$_EmpState>(this, _$identity);
}

abstract class _EmpState implements EmpState {
  const factory _EmpState({final List<EmployeeModel> incontrolLevelsList}) =
      _$_EmpState;

  @override
  List<EmployeeModel> get incontrolLevelsList;
  @override
  @JsonKey(ignore: true)
  _$$_EmpStateCopyWith<_$_EmpState> get copyWith =>
      throw _privateConstructorUsedError;
}
