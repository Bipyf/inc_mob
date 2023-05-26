// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobState {
  List<WorkplaceModel>? get incontrolLevelsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobStateCopyWith<JobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStateCopyWith<$Res> {
  factory $JobStateCopyWith(JobState value, $Res Function(JobState) then) =
      _$JobStateCopyWithImpl<$Res, JobState>;
  @useResult
  $Res call({List<WorkplaceModel>? incontrolLevelsList});
}

/// @nodoc
class _$JobStateCopyWithImpl<$Res, $Val extends JobState>
    implements $JobStateCopyWith<$Res> {
  _$JobStateCopyWithImpl(this._value, this._then);

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
              as List<WorkplaceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobStateCopyWith<$Res> implements $JobStateCopyWith<$Res> {
  factory _$$_JobStateCopyWith(
          _$_JobState value, $Res Function(_$_JobState) then) =
      __$$_JobStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkplaceModel>? incontrolLevelsList});
}

/// @nodoc
class __$$_JobStateCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$_JobState>
    implements _$$_JobStateCopyWith<$Res> {
  __$$_JobStateCopyWithImpl(
      _$_JobState _value, $Res Function(_$_JobState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incontrolLevelsList = freezed,
  }) {
    return _then(_$_JobState(
      incontrolLevelsList: freezed == incontrolLevelsList
          ? _value._incontrolLevelsList
          : incontrolLevelsList // ignore: cast_nullable_to_non_nullable
              as List<WorkplaceModel>?,
    ));
  }
}

/// @nodoc

class _$_JobState implements _JobState {
  const _$_JobState({final List<WorkplaceModel>? incontrolLevelsList})
      : _incontrolLevelsList = incontrolLevelsList;

  final List<WorkplaceModel>? _incontrolLevelsList;
  @override
  List<WorkplaceModel>? get incontrolLevelsList {
    final value = _incontrolLevelsList;
    if (value == null) return null;
    if (_incontrolLevelsList is EqualUnmodifiableListView)
      return _incontrolLevelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JobState(incontrolLevelsList: $incontrolLevelsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobState &&
            const DeepCollectionEquality()
                .equals(other._incontrolLevelsList, _incontrolLevelsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_incontrolLevelsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobStateCopyWith<_$_JobState> get copyWith =>
      __$$_JobStateCopyWithImpl<_$_JobState>(this, _$identity);
}

abstract class _JobState implements JobState {
  const factory _JobState({final List<WorkplaceModel>? incontrolLevelsList}) =
      _$_JobState;

  @override
  List<WorkplaceModel>? get incontrolLevelsList;
  @override
  @JsonKey(ignore: true)
  _$$_JobStateCopyWith<_$_JobState> get copyWith =>
      throw _privateConstructorUsedError;
}
