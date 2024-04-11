// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupied_slots_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OccupiedSlotsModel _$OccupiedSlotsModelFromJson(Map<String, dynamic> json) {
  return _OccupiedSlotsModel.fromJson(json);
}

/// @nodoc
mixin _$OccupiedSlotsModel {
  String get dayDate => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupiedSlotsModelCopyWith<OccupiedSlotsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupiedSlotsModelCopyWith<$Res> {
  factory $OccupiedSlotsModelCopyWith(
          OccupiedSlotsModel value, $Res Function(OccupiedSlotsModel) then) =
      _$OccupiedSlotsModelCopyWithImpl<$Res, OccupiedSlotsModel>;
  @useResult
  $Res call({String dayDate, String month, String time});
}

/// @nodoc
class _$OccupiedSlotsModelCopyWithImpl<$Res, $Val extends OccupiedSlotsModel>
    implements $OccupiedSlotsModelCopyWith<$Res> {
  _$OccupiedSlotsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayDate = null,
    Object? month = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      dayDate: null == dayDate
          ? _value.dayDate
          : dayDate // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccupiedSlotsModelImplCopyWith<$Res>
    implements $OccupiedSlotsModelCopyWith<$Res> {
  factory _$$OccupiedSlotsModelImplCopyWith(_$OccupiedSlotsModelImpl value,
          $Res Function(_$OccupiedSlotsModelImpl) then) =
      __$$OccupiedSlotsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dayDate, String month, String time});
}

/// @nodoc
class __$$OccupiedSlotsModelImplCopyWithImpl<$Res>
    extends _$OccupiedSlotsModelCopyWithImpl<$Res, _$OccupiedSlotsModelImpl>
    implements _$$OccupiedSlotsModelImplCopyWith<$Res> {
  __$$OccupiedSlotsModelImplCopyWithImpl(_$OccupiedSlotsModelImpl _value,
      $Res Function(_$OccupiedSlotsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayDate = null,
    Object? month = null,
    Object? time = null,
  }) {
    return _then(_$OccupiedSlotsModelImpl(
      dayDate: null == dayDate
          ? _value.dayDate
          : dayDate // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccupiedSlotsModelImpl implements _OccupiedSlotsModel {
  const _$OccupiedSlotsModelImpl(
      {required this.dayDate, required this.month, required this.time});

  factory _$OccupiedSlotsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccupiedSlotsModelImplFromJson(json);

  @override
  final String dayDate;
  @override
  final String month;
  @override
  final String time;

  @override
  String toString() {
    return 'OccupiedSlotsModel(dayDate: $dayDate, month: $month, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupiedSlotsModelImpl &&
            (identical(other.dayDate, dayDate) || other.dayDate == dayDate) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayDate, month, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupiedSlotsModelImplCopyWith<_$OccupiedSlotsModelImpl> get copyWith =>
      __$$OccupiedSlotsModelImplCopyWithImpl<_$OccupiedSlotsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccupiedSlotsModelImplToJson(
      this,
    );
  }
}

abstract class _OccupiedSlotsModel implements OccupiedSlotsModel {
  const factory _OccupiedSlotsModel(
      {required final String dayDate,
      required final String month,
      required final String time}) = _$OccupiedSlotsModelImpl;

  factory _OccupiedSlotsModel.fromJson(Map<String, dynamic> json) =
      _$OccupiedSlotsModelImpl.fromJson;

  @override
  String get dayDate;
  @override
  String get month;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$OccupiedSlotsModelImplCopyWith<_$OccupiedSlotsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
