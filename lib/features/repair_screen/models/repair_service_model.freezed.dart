// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repair_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepairServiceModel _$RepairServiceModelFromJson(Map<String, dynamic> json) {
  return _RepairServiceModel.fromJson(json);
}

/// @nodoc
mixin _$RepairServiceModel {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairServiceModelCopyWith<RepairServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairServiceModelCopyWith<$Res> {
  factory $RepairServiceModelCopyWith(
          RepairServiceModel value, $Res Function(RepairServiceModel) then) =
      _$RepairServiceModelCopyWithImpl<$Res, RepairServiceModel>;
  @useResult
  $Res call({String name, double price, double rating, int time});
}

/// @nodoc
class _$RepairServiceModelCopyWithImpl<$Res, $Val extends RepairServiceModel>
    implements $RepairServiceModelCopyWith<$Res> {
  _$RepairServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? rating = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepairServiceModelImplCopyWith<$Res>
    implements $RepairServiceModelCopyWith<$Res> {
  factory _$$RepairServiceModelImplCopyWith(_$RepairServiceModelImpl value,
          $Res Function(_$RepairServiceModelImpl) then) =
      __$$RepairServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price, double rating, int time});
}

/// @nodoc
class __$$RepairServiceModelImplCopyWithImpl<$Res>
    extends _$RepairServiceModelCopyWithImpl<$Res, _$RepairServiceModelImpl>
    implements _$$RepairServiceModelImplCopyWith<$Res> {
  __$$RepairServiceModelImplCopyWithImpl(_$RepairServiceModelImpl _value,
      $Res Function(_$RepairServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? rating = null,
    Object? time = null,
  }) {
    return _then(_$RepairServiceModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepairServiceModelImpl implements _RepairServiceModel {
  const _$RepairServiceModelImpl(
      {required this.name,
      required this.price,
      required this.rating,
      required this.time});

  factory _$RepairServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepairServiceModelImplFromJson(json);

  @override
  final String name;
  @override
  final double price;
  @override
  final double rating;
  @override
  final int time;

  @override
  String toString() {
    return 'RepairServiceModel(name: $name, price: $price, rating: $rating, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepairServiceModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, rating, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepairServiceModelImplCopyWith<_$RepairServiceModelImpl> get copyWith =>
      __$$RepairServiceModelImplCopyWithImpl<_$RepairServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepairServiceModelImplToJson(
      this,
    );
  }
}

abstract class _RepairServiceModel implements RepairServiceModel {
  const factory _RepairServiceModel(
      {required final String name,
      required final double price,
      required final double rating,
      required final int time}) = _$RepairServiceModelImpl;

  factory _RepairServiceModel.fromJson(Map<String, dynamic> json) =
      _$RepairServiceModelImpl.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  double get rating;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$RepairServiceModelImplCopyWith<_$RepairServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
