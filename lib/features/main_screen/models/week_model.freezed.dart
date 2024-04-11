// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeekModel {
  List<DayModel> get days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekModelCopyWith<WeekModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekModelCopyWith<$Res> {
  factory $WeekModelCopyWith(WeekModel value, $Res Function(WeekModel) then) =
      _$WeekModelCopyWithImpl<$Res, WeekModel>;
  @useResult
  $Res call({List<DayModel> days});
}

/// @nodoc
class _$WeekModelCopyWithImpl<$Res, $Val extends WeekModel>
    implements $WeekModelCopyWith<$Res> {
  _$WeekModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekModelImplCopyWith<$Res>
    implements $WeekModelCopyWith<$Res> {
  factory _$$WeekModelImplCopyWith(
          _$WeekModelImpl value, $Res Function(_$WeekModelImpl) then) =
      __$$WeekModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DayModel> days});
}

/// @nodoc
class __$$WeekModelImplCopyWithImpl<$Res>
    extends _$WeekModelCopyWithImpl<$Res, _$WeekModelImpl>
    implements _$$WeekModelImplCopyWith<$Res> {
  __$$WeekModelImplCopyWithImpl(
      _$WeekModelImpl _value, $Res Function(_$WeekModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$WeekModelImpl(
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayModel>,
    ));
  }
}

/// @nodoc

class _$WeekModelImpl implements _WeekModel {
  const _$WeekModelImpl({required final List<DayModel> days}) : _days = days;

  final List<DayModel> _days;
  @override
  List<DayModel> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'WeekModel(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekModelImpl &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekModelImplCopyWith<_$WeekModelImpl> get copyWith =>
      __$$WeekModelImplCopyWithImpl<_$WeekModelImpl>(this, _$identity);
}

abstract class _WeekModel implements WeekModel {
  const factory _WeekModel({required final List<DayModel> days}) =
      _$WeekModelImpl;

  @override
  List<DayModel> get days;
  @override
  @JsonKey(ignore: true)
  _$$WeekModelImplCopyWith<_$WeekModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
