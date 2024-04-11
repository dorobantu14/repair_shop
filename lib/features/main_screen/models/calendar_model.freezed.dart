// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarModel {
  List<WeekModel> get weeks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarModelCopyWith<CalendarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarModelCopyWith<$Res> {
  factory $CalendarModelCopyWith(
          CalendarModel value, $Res Function(CalendarModel) then) =
      _$CalendarModelCopyWithImpl<$Res, CalendarModel>;
  @useResult
  $Res call({List<WeekModel> weeks});
}

/// @nodoc
class _$CalendarModelCopyWithImpl<$Res, $Val extends CalendarModel>
    implements $CalendarModelCopyWith<$Res> {
  _$CalendarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeks = null,
  }) {
    return _then(_value.copyWith(
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<WeekModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarModelImplCopyWith<$Res>
    implements $CalendarModelCopyWith<$Res> {
  factory _$$CalendarModelImplCopyWith(
          _$CalendarModelImpl value, $Res Function(_$CalendarModelImpl) then) =
      __$$CalendarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeekModel> weeks});
}

/// @nodoc
class __$$CalendarModelImplCopyWithImpl<$Res>
    extends _$CalendarModelCopyWithImpl<$Res, _$CalendarModelImpl>
    implements _$$CalendarModelImplCopyWith<$Res> {
  __$$CalendarModelImplCopyWithImpl(
      _$CalendarModelImpl _value, $Res Function(_$CalendarModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeks = null,
  }) {
    return _then(_$CalendarModelImpl(
      weeks: null == weeks
          ? _value._weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<WeekModel>,
    ));
  }
}

/// @nodoc

class _$CalendarModelImpl implements _CalendarModel {
  const _$CalendarModelImpl({required final List<WeekModel> weeks})
      : _weeks = weeks;

  final List<WeekModel> _weeks;
  @override
  List<WeekModel> get weeks {
    if (_weeks is EqualUnmodifiableListView) return _weeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeks);
  }

  @override
  String toString() {
    return 'CalendarModel(weeks: $weeks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarModelImpl &&
            const DeepCollectionEquality().equals(other._weeks, _weeks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weeks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarModelImplCopyWith<_$CalendarModelImpl> get copyWith =>
      __$$CalendarModelImplCopyWithImpl<_$CalendarModelImpl>(this, _$identity);
}

abstract class _CalendarModel implements CalendarModel {
  const factory _CalendarModel({required final List<WeekModel> weeks}) =
      _$CalendarModelImpl;

  @override
  List<WeekModel> get weeks;
  @override
  @JsonKey(ignore: true)
  _$$CalendarModelImplCopyWith<_$CalendarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
