// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayModel _$DayModelFromJson(Map<String, dynamic> json) {
  return _DayModel.fromJson(json);
}

/// @nodoc
mixin _$DayModel {
  String get dayName => throw _privateConstructorUsedError;
  String get dayDate => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayModelCopyWith<DayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayModelCopyWith<$Res> {
  factory $DayModelCopyWith(DayModel value, $Res Function(DayModel) then) =
      _$DayModelCopyWithImpl<$Res, DayModel>;
  @useResult
  $Res call({String dayName, String dayDate, String month, String year});
}

/// @nodoc
class _$DayModelCopyWithImpl<$Res, $Val extends DayModel>
    implements $DayModelCopyWith<$Res> {
  _$DayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayName = null,
    Object? dayDate = null,
    Object? month = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      dayName: null == dayName
          ? _value.dayName
          : dayName // ignore: cast_nullable_to_non_nullable
              as String,
      dayDate: null == dayDate
          ? _value.dayDate
          : dayDate // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayModelImplCopyWith<$Res>
    implements $DayModelCopyWith<$Res> {
  factory _$$DayModelImplCopyWith(
          _$DayModelImpl value, $Res Function(_$DayModelImpl) then) =
      __$$DayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dayName, String dayDate, String month, String year});
}

/// @nodoc
class __$$DayModelImplCopyWithImpl<$Res>
    extends _$DayModelCopyWithImpl<$Res, _$DayModelImpl>
    implements _$$DayModelImplCopyWith<$Res> {
  __$$DayModelImplCopyWithImpl(
      _$DayModelImpl _value, $Res Function(_$DayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayName = null,
    Object? dayDate = null,
    Object? month = null,
    Object? year = null,
  }) {
    return _then(_$DayModelImpl(
      dayName: null == dayName
          ? _value.dayName
          : dayName // ignore: cast_nullable_to_non_nullable
              as String,
      dayDate: null == dayDate
          ? _value.dayDate
          : dayDate // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DayModelImpl implements _DayModel {
  const _$DayModelImpl(
      {required this.dayName,
      required this.dayDate,
      required this.month,
      required this.year});

  factory _$DayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayModelImplFromJson(json);

  @override
  final String dayName;
  @override
  final String dayDate;
  @override
  final String month;
  @override
  final String year;

  @override
  String toString() {
    return 'DayModel(dayName: $dayName, dayDate: $dayDate, month: $month, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayModelImpl &&
            (identical(other.dayName, dayName) || other.dayName == dayName) &&
            (identical(other.dayDate, dayDate) || other.dayDate == dayDate) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayName, dayDate, month, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayModelImplCopyWith<_$DayModelImpl> get copyWith =>
      __$$DayModelImplCopyWithImpl<_$DayModelImpl>(this, _$identity);
}

abstract class _DayModel implements DayModel {
  const factory _DayModel(
      {required final String dayName,
      required final String dayDate,
      required final String month,
      required final String year}) = _$DayModelImpl;

  factory _DayModel.fromJson(Map<String, dynamic> json) =
      _$DayModelImpl.fromJson;

  @override
  String get dayName;
  @override
  String get dayDate;
  @override
  String get month;
  @override
  String get year;
  @override
  @JsonKey(ignore: true)
  _$$DayModelImplCopyWith<_$DayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
