// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReqState {
  List<RequestModel>? get incontrolLevelsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReqStateCopyWith<ReqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqStateCopyWith<$Res> {
  factory $ReqStateCopyWith(ReqState value, $Res Function(ReqState) then) =
      _$ReqStateCopyWithImpl<$Res, ReqState>;
  @useResult
  $Res call({List<RequestModel>? incontrolLevelsList});
}

/// @nodoc
class _$ReqStateCopyWithImpl<$Res, $Val extends ReqState>
    implements $ReqStateCopyWith<$Res> {
  _$ReqStateCopyWithImpl(this._value, this._then);

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
              as List<RequestModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReqStateCopyWith<$Res> implements $ReqStateCopyWith<$Res> {
  factory _$$_ReqStateCopyWith(
          _$_ReqState value, $Res Function(_$_ReqState) then) =
      __$$_ReqStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RequestModel>? incontrolLevelsList});
}

/// @nodoc
class __$$_ReqStateCopyWithImpl<$Res>
    extends _$ReqStateCopyWithImpl<$Res, _$_ReqState>
    implements _$$_ReqStateCopyWith<$Res> {
  __$$_ReqStateCopyWithImpl(
      _$_ReqState _value, $Res Function(_$_ReqState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incontrolLevelsList = freezed,
  }) {
    return _then(_$_ReqState(
      incontrolLevelsList: freezed == incontrolLevelsList
          ? _value._incontrolLevelsList
          : incontrolLevelsList // ignore: cast_nullable_to_non_nullable
              as List<RequestModel>?,
    ));
  }
}

/// @nodoc

class _$_ReqState implements _ReqState {
  const _$_ReqState({final List<RequestModel>? incontrolLevelsList})
      : _incontrolLevelsList = incontrolLevelsList;

  final List<RequestModel>? _incontrolLevelsList;
  @override
  List<RequestModel>? get incontrolLevelsList {
    final value = _incontrolLevelsList;
    if (value == null) return null;
    if (_incontrolLevelsList is EqualUnmodifiableListView)
      return _incontrolLevelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReqState(incontrolLevelsList: $incontrolLevelsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReqState &&
            const DeepCollectionEquality()
                .equals(other._incontrolLevelsList, _incontrolLevelsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_incontrolLevelsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReqStateCopyWith<_$_ReqState> get copyWith =>
      __$$_ReqStateCopyWithImpl<_$_ReqState>(this, _$identity);
}

abstract class _ReqState implements ReqState {
  const factory _ReqState({final List<RequestModel>? incontrolLevelsList}) =
      _$_ReqState;

  @override
  List<RequestModel>? get incontrolLevelsList;
  @override
  @JsonKey(ignore: true)
  _$$_ReqStateCopyWith<_$_ReqState> get copyWith =>
      throw _privateConstructorUsedError;
}
