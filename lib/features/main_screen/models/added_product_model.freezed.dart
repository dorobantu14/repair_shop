// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'added_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddedProductModel {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddedProductModelCopyWith<AddedProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddedProductModelCopyWith<$Res> {
  factory $AddedProductModelCopyWith(
          AddedProductModel value, $Res Function(AddedProductModel) then) =
      _$AddedProductModelCopyWithImpl<$Res, AddedProductModel>;
  @useResult
  $Res call({String name, double price, int quantity, double totalPrice});
}

/// @nodoc
class _$AddedProductModelCopyWithImpl<$Res, $Val extends AddedProductModel>
    implements $AddedProductModelCopyWith<$Res> {
  _$AddedProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? totalPrice = null,
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddedProductModelImplCopyWith<$Res>
    implements $AddedProductModelCopyWith<$Res> {
  factory _$$AddedProductModelImplCopyWith(_$AddedProductModelImpl value,
          $Res Function(_$AddedProductModelImpl) then) =
      __$$AddedProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price, int quantity, double totalPrice});
}

/// @nodoc
class __$$AddedProductModelImplCopyWithImpl<$Res>
    extends _$AddedProductModelCopyWithImpl<$Res, _$AddedProductModelImpl>
    implements _$$AddedProductModelImplCopyWith<$Res> {
  __$$AddedProductModelImplCopyWithImpl(_$AddedProductModelImpl _value,
      $Res Function(_$AddedProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? totalPrice = null,
  }) {
    return _then(_$AddedProductModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddedProductModelImpl implements _AddedProductModel {
  const _$AddedProductModelImpl(
      {required this.name,
      required this.price,
      required this.quantity,
      required this.totalPrice});

  @override
  final String name;
  @override
  final double price;
  @override
  final int quantity;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'AddedProductModel(name: $name, price: $price, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedProductModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, price, quantity, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedProductModelImplCopyWith<_$AddedProductModelImpl> get copyWith =>
      __$$AddedProductModelImplCopyWithImpl<_$AddedProductModelImpl>(
          this, _$identity);
}

abstract class _AddedProductModel implements AddedProductModel {
  const factory _AddedProductModel(
      {required final String name,
      required final double price,
      required final int quantity,
      required final double totalPrice}) = _$AddedProductModelImpl;

  @override
  String get name;
  @override
  double get price;
  @override
  int get quantity;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$AddedProductModelImplCopyWith<_$AddedProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
