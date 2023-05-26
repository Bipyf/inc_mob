// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompState {
  List<ComputerModel>? get incontrolLevelsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompStateCopyWith<CompState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompStateCopyWith<$Res> {
  factory $CompStateCopyWith(CompState value, $Res Function(CompState) then) =
      _$CompStateCopyWithImpl<$Res, CompState>;
  @useResult
  $Res call({List<ComputerModel>? incontrolLevelsList});
}

/// @nodoc
class _$CompStateCopyWithImpl<$Res, $Val extends CompState>
    implements $CompStateCopyWith<$Res> {
  _$CompStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incontrolLevelsList = freezed,
  }) {
    return _then(_value.copyWith(
      incontrolLevelsList: freezed == incontrolLevelsList
          ? _value.incontrolLevelsList
          : incontrolLevelsList // ignore: cast_nullable_to_non_nullable
              as List<ComputerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompStateCopyWith<$Res> implements $CompStateCopyWith<$Res> {
  factory _$$_CompStateCopyWith(
          _$_CompState value, $Res Function(_$_CompState) then) =
      __$$_CompStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ComputerModel>? incontrolLevelsList});
}

/// @nodoc
class __$$_CompStateCopyWithImpl<$Res>
    extends _$CompStateCopyWithImpl<$Res, _$_CompState>
    implements _$$_CompStateCopyWith<$Res> {
  __$$_CompStateCopyWithImpl(
      _$_CompState _value, $Res Function(_$_CompState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incontrolLevelsList = freezed,
  }) {
    return _then(_$_CompState(
      incontrolLevelsList: freezed == incontrolLevelsList
          ? _value._incontrolLevelsList
          : incontrolLevelsList // ignore: cast_nullable_to_non_nullable
              as List<ComputerModel>?,
    ));
  }
}

/// @nodoc

class _$_CompState implements _CompState {
  const _$_CompState({final List<ComputerModel>? incontrolLevelsList})
      : _incontrolLevelsList = incontrolLevelsList;

  final List<ComputerModel>? _incontrolLevelsList;
  @override
  List<ComputerModel>? get incontrolLevelsList {
    final value = _incontrolLevelsList;
    if (value == null) return null;
    if (_incontrolLevelsList is EqualUnmodifiableListView)
      return _incontrolLevelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CompState(incontrolLevelsList: $incontrolLevelsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompState &&
            const DeepCollectionEquality()
                .equals(other._incontrolLevelsList, _incontrolLevelsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_incontrolLevelsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompStateCopyWith<_$_CompState> get copyWith =>
      __$$_CompStateCopyWithImpl<_$_CompState>(this, _$identity);
}

abstract class _CompState implements CompState {
  const factory _CompState({final List<ComputerModel>? incontrolLevelsList}) =
      _$_CompState;

  @override
  List<ComputerModel>? get incontrolLevelsList;
  @override
  @JsonKey(ignore: true)
  _$$_CompStateCopyWith<_$_CompState> get copyWith =>
      throw _privateConstructorUsedError;
}
