// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(AddedProductModel product) addProduct,
    required TResult Function(AddedProductModel product) removeProduct,
    required TResult Function(AddedProductModel product) updateProduct,
    required TResult Function() getOccupiedSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(AddedProductModel product)? addProduct,
    TResult? Function(AddedProductModel product)? removeProduct,
    TResult? Function(AddedProductModel product)? updateProduct,
    TResult? Function()? getOccupiedSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(AddedProductModel product)? addProduct,
    TResult Function(AddedProductModel product)? removeProduct,
    TResult Function(AddedProductModel product)? updateProduct,
    TResult Function()? getOccupiedSlots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_RemoveProductEvent value) removeProduct,
    required TResult Function(_UpdateProductEvent value) updateProduct,
    required TResult Function(_GetOccupiedSlotsEvent value) getOccupiedSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_RemoveProductEvent value)? removeProduct,
    TResult? Function(_UpdateProductEvent value)? updateProduct,
    TResult? Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_RemoveProductEvent value)? removeProduct,
    TResult Function(_UpdateProductEvent value)? updateProduct,
    TResult Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res, ShopEvent>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res, $Val extends ShopEvent>
    implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductsEventImplCopyWith<$Res> {
  factory _$$GetProductsEventImplCopyWith(_$GetProductsEventImpl value,
          $Res Function(_$GetProductsEventImpl) then) =
      __$$GetProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$GetProductsEventImpl>
    implements _$$GetProductsEventImplCopyWith<$Res> {
  __$$GetProductsEventImplCopyWithImpl(_$GetProductsEventImpl _value,
      $Res Function(_$GetProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsEventImpl implements _GetProductsEvent {
  const _$GetProductsEventImpl();

  @override
  String toString() {
    return 'ShopEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(AddedProductModel product) addProduct,
    required TResult Function(AddedProductModel product) removeProduct,
    required TResult Function(AddedProductModel product) updateProduct,
    required TResult Function() getOccupiedSlots,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(AddedProductModel product)? addProduct,
    TResult? Function(AddedProductModel product)? removeProduct,
    TResult? Function(AddedProductModel product)? updateProduct,
    TResult? Function()? getOccupiedSlots,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(AddedProductModel product)? addProduct,
    TResult Function(AddedProductModel product)? removeProduct,
    TResult Function(AddedProductModel product)? updateProduct,
    TResult Function()? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_RemoveProductEvent value) removeProduct,
    required TResult Function(_UpdateProductEvent value) updateProduct,
    required TResult Function(_GetOccupiedSlotsEvent value) getOccupiedSlots,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_RemoveProductEvent value)? removeProduct,
    TResult? Function(_UpdateProductEvent value)? updateProduct,
    TResult? Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_RemoveProductEvent value)? removeProduct,
    TResult Function(_UpdateProductEvent value)? updateProduct,
    TResult Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProductsEvent implements ShopEvent {
  const factory _GetProductsEvent() = _$GetProductsEventImpl;
}

/// @nodoc
abstract class _$$AddProductEventImplCopyWith<$Res> {
  factory _$$AddProductEventImplCopyWith(_$AddProductEventImpl value,
          $Res Function(_$AddProductEventImpl) then) =
      __$$AddProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddedProductModel product});

  $AddedProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$AddProductEventImpl>
    implements _$$AddProductEventImplCopyWith<$Res> {
  __$$AddProductEventImplCopyWithImpl(
      _$AddProductEventImpl _value, $Res Function(_$AddProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductEventImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AddedProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddedProductModelCopyWith<$Res> get product {
    return $AddedProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddProductEventImpl implements _AddProductEvent {
  const _$AddProductEventImpl({required this.product});

  @override
  final AddedProductModel product;

  @override
  String toString() {
    return 'ShopEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductEventImplCopyWith<_$AddProductEventImpl> get copyWith =>
      __$$AddProductEventImplCopyWithImpl<_$AddProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(AddedProductModel product) addProduct,
    required TResult Function(AddedProductModel product) removeProduct,
    required TResult Function(AddedProductModel product) updateProduct,
    required TResult Function() getOccupiedSlots,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(AddedProductModel product)? addProduct,
    TResult? Function(AddedProductModel product)? removeProduct,
    TResult? Function(AddedProductModel product)? updateProduct,
    TResult? Function()? getOccupiedSlots,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(AddedProductModel product)? addProduct,
    TResult Function(AddedProductModel product)? removeProduct,
    TResult Function(AddedProductModel product)? updateProduct,
    TResult Function()? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_RemoveProductEvent value) removeProduct,
    required TResult Function(_UpdateProductEvent value) updateProduct,
    required TResult Function(_GetOccupiedSlotsEvent value) getOccupiedSlots,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_RemoveProductEvent value)? removeProduct,
    TResult? Function(_UpdateProductEvent value)? updateProduct,
    TResult? Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_RemoveProductEvent value)? removeProduct,
    TResult Function(_UpdateProductEvent value)? updateProduct,
    TResult Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProductEvent implements ShopEvent {
  const factory _AddProductEvent({required final AddedProductModel product}) =
      _$AddProductEventImpl;

  AddedProductModel get product;
  @JsonKey(ignore: true)
  _$$AddProductEventImplCopyWith<_$AddProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductEventImplCopyWith<$Res> {
  factory _$$RemoveProductEventImplCopyWith(_$RemoveProductEventImpl value,
          $Res Function(_$RemoveProductEventImpl) then) =
      __$$RemoveProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddedProductModel product});

  $AddedProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$RemoveProductEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$RemoveProductEventImpl>
    implements _$$RemoveProductEventImplCopyWith<$Res> {
  __$$RemoveProductEventImplCopyWithImpl(_$RemoveProductEventImpl _value,
      $Res Function(_$RemoveProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveProductEventImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AddedProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddedProductModelCopyWith<$Res> get product {
    return $AddedProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$RemoveProductEventImpl implements _RemoveProductEvent {
  const _$RemoveProductEventImpl({required this.product});

  @override
  final AddedProductModel product;

  @override
  String toString() {
    return 'ShopEvent.removeProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductEventImplCopyWith<_$RemoveProductEventImpl> get copyWith =>
      __$$RemoveProductEventImplCopyWithImpl<_$RemoveProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(AddedProductModel product) addProduct,
    required TResult Function(AddedProductModel product) removeProduct,
    required TResult Function(AddedProductModel product) updateProduct,
    required TResult Function() getOccupiedSlots,
  }) {
    return removeProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(AddedProductModel product)? addProduct,
    TResult? Function(AddedProductModel product)? removeProduct,
    TResult? Function(AddedProductModel product)? updateProduct,
    TResult? Function()? getOccupiedSlots,
  }) {
    return removeProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(AddedProductModel product)? addProduct,
    TResult Function(AddedProductModel product)? removeProduct,
    TResult Function(AddedProductModel product)? updateProduct,
    TResult Function()? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_RemoveProductEvent value) removeProduct,
    required TResult Function(_UpdateProductEvent value) updateProduct,
    required TResult Function(_GetOccupiedSlotsEvent value) getOccupiedSlots,
  }) {
    return removeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_RemoveProductEvent value)? removeProduct,
    TResult? Function(_UpdateProductEvent value)? updateProduct,
    TResult? Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
  }) {
    return removeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_RemoveProductEvent value)? removeProduct,
    TResult Function(_UpdateProductEvent value)? updateProduct,
    TResult Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductEvent implements ShopEvent {
  const factory _RemoveProductEvent(
      {required final AddedProductModel product}) = _$RemoveProductEventImpl;

  AddedProductModel get product;
  @JsonKey(ignore: true)
  _$$RemoveProductEventImplCopyWith<_$RemoveProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductEventImplCopyWith<$Res> {
  factory _$$UpdateProductEventImplCopyWith(_$UpdateProductEventImpl value,
          $Res Function(_$UpdateProductEventImpl) then) =
      __$$UpdateProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddedProductModel product});

  $AddedProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$UpdateProductEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$UpdateProductEventImpl>
    implements _$$UpdateProductEventImplCopyWith<$Res> {
  __$$UpdateProductEventImplCopyWithImpl(_$UpdateProductEventImpl _value,
      $Res Function(_$UpdateProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$UpdateProductEventImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AddedProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddedProductModelCopyWith<$Res> get product {
    return $AddedProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$UpdateProductEventImpl implements _UpdateProductEvent {
  const _$UpdateProductEventImpl({required this.product});

  @override
  final AddedProductModel product;

  @override
  String toString() {
    return 'ShopEvent.updateProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductEventImplCopyWith<_$UpdateProductEventImpl> get copyWith =>
      __$$UpdateProductEventImplCopyWithImpl<_$UpdateProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(AddedProductModel product) addProduct,
    required TResult Function(AddedProductModel product) removeProduct,
    required TResult Function(AddedProductModel product) updateProduct,
    required TResult Function() getOccupiedSlots,
  }) {
    return updateProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(AddedProductModel product)? addProduct,
    TResult? Function(AddedProductModel product)? removeProduct,
    TResult? Function(AddedProductModel product)? updateProduct,
    TResult? Function()? getOccupiedSlots,
  }) {
    return updateProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(AddedProductModel product)? addProduct,
    TResult Function(AddedProductModel product)? removeProduct,
    TResult Function(AddedProductModel product)? updateProduct,
    TResult Function()? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_RemoveProductEvent value) removeProduct,
    required TResult Function(_UpdateProductEvent value) updateProduct,
    required TResult Function(_GetOccupiedSlotsEvent value) getOccupiedSlots,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_RemoveProductEvent value)? removeProduct,
    TResult? Function(_UpdateProductEvent value)? updateProduct,
    TResult? Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_RemoveProductEvent value)? removeProduct,
    TResult Function(_UpdateProductEvent value)? updateProduct,
    TResult Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdateProductEvent implements ShopEvent {
  const factory _UpdateProductEvent(
      {required final AddedProductModel product}) = _$UpdateProductEventImpl;

  AddedProductModel get product;
  @JsonKey(ignore: true)
  _$$UpdateProductEventImplCopyWith<_$UpdateProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOccupiedSlotsEventImplCopyWith<$Res> {
  factory _$$GetOccupiedSlotsEventImplCopyWith(
          _$GetOccupiedSlotsEventImpl value,
          $Res Function(_$GetOccupiedSlotsEventImpl) then) =
      __$$GetOccupiedSlotsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOccupiedSlotsEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$GetOccupiedSlotsEventImpl>
    implements _$$GetOccupiedSlotsEventImplCopyWith<$Res> {
  __$$GetOccupiedSlotsEventImplCopyWithImpl(_$GetOccupiedSlotsEventImpl _value,
      $Res Function(_$GetOccupiedSlotsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOccupiedSlotsEventImpl implements _GetOccupiedSlotsEvent {
  const _$GetOccupiedSlotsEventImpl();

  @override
  String toString() {
    return 'ShopEvent.getOccupiedSlots()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOccupiedSlotsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(AddedProductModel product) addProduct,
    required TResult Function(AddedProductModel product) removeProduct,
    required TResult Function(AddedProductModel product) updateProduct,
    required TResult Function() getOccupiedSlots,
  }) {
    return getOccupiedSlots();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(AddedProductModel product)? addProduct,
    TResult? Function(AddedProductModel product)? removeProduct,
    TResult? Function(AddedProductModel product)? updateProduct,
    TResult? Function()? getOccupiedSlots,
  }) {
    return getOccupiedSlots?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(AddedProductModel product)? addProduct,
    TResult Function(AddedProductModel product)? removeProduct,
    TResult Function(AddedProductModel product)? updateProduct,
    TResult Function()? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (getOccupiedSlots != null) {
      return getOccupiedSlots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_RemoveProductEvent value) removeProduct,
    required TResult Function(_UpdateProductEvent value) updateProduct,
    required TResult Function(_GetOccupiedSlotsEvent value) getOccupiedSlots,
  }) {
    return getOccupiedSlots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_RemoveProductEvent value)? removeProduct,
    TResult? Function(_UpdateProductEvent value)? updateProduct,
    TResult? Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
  }) {
    return getOccupiedSlots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_RemoveProductEvent value)? removeProduct,
    TResult Function(_UpdateProductEvent value)? updateProduct,
    TResult Function(_GetOccupiedSlotsEvent value)? getOccupiedSlots,
    required TResult orElse(),
  }) {
    if (getOccupiedSlots != null) {
      return getOccupiedSlots(this);
    }
    return orElse();
  }
}

abstract class _GetOccupiedSlotsEvent implements ShopEvent {
  const factory _GetOccupiedSlotsEvent() = _$GetOccupiedSlotsEventImpl;
}

/// @nodoc
mixin _$ShopState {
  ShopStatus get status => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  List<AddedProductModel> get addedProducts =>
      throw _privateConstructorUsedError;
  List<OccupiedSlotsModel> get occupiedSlots =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {ShopStatus status,
      List<ProductModel> products,
      List<AddedProductModel> addedProducts,
      List<OccupiedSlotsModel> occupiedSlots});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? addedProducts = null,
    Object? occupiedSlots = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopStatus,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      addedProducts: null == addedProducts
          ? _value.addedProducts
          : addedProducts // ignore: cast_nullable_to_non_nullable
              as List<AddedProductModel>,
      occupiedSlots: null == occupiedSlots
          ? _value.occupiedSlots
          : occupiedSlots // ignore: cast_nullable_to_non_nullable
              as List<OccupiedSlotsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopStateImplCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$ShopStateImplCopyWith(
          _$ShopStateImpl value, $Res Function(_$ShopStateImpl) then) =
      __$$ShopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShopStatus status,
      List<ProductModel> products,
      List<AddedProductModel> addedProducts,
      List<OccupiedSlotsModel> occupiedSlots});
}

/// @nodoc
class __$$ShopStateImplCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$ShopStateImpl>
    implements _$$ShopStateImplCopyWith<$Res> {
  __$$ShopStateImplCopyWithImpl(
      _$ShopStateImpl _value, $Res Function(_$ShopStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? addedProducts = null,
    Object? occupiedSlots = null,
  }) {
    return _then(_$ShopStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopStatus,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      addedProducts: null == addedProducts
          ? _value._addedProducts
          : addedProducts // ignore: cast_nullable_to_non_nullable
              as List<AddedProductModel>,
      occupiedSlots: null == occupiedSlots
          ? _value._occupiedSlots
          : occupiedSlots // ignore: cast_nullable_to_non_nullable
              as List<OccupiedSlotsModel>,
    ));
  }
}

/// @nodoc

class _$ShopStateImpl implements _ShopState {
  const _$ShopStateImpl(
      {this.status = ShopStatus.initial,
      final List<ProductModel> products = const [],
      final List<AddedProductModel> addedProducts = const [],
      final List<OccupiedSlotsModel> occupiedSlots = const []})
      : _products = products,
        _addedProducts = addedProducts,
        _occupiedSlots = occupiedSlots;

  @override
  @JsonKey()
  final ShopStatus status;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<AddedProductModel> _addedProducts;
  @override
  @JsonKey()
  List<AddedProductModel> get addedProducts {
    if (_addedProducts is EqualUnmodifiableListView) return _addedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addedProducts);
  }

  final List<OccupiedSlotsModel> _occupiedSlots;
  @override
  @JsonKey()
  List<OccupiedSlotsModel> get occupiedSlots {
    if (_occupiedSlots is EqualUnmodifiableListView) return _occupiedSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occupiedSlots);
  }

  @override
  String toString() {
    return 'ShopState(status: $status, products: $products, addedProducts: $addedProducts, occupiedSlots: $occupiedSlots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._addedProducts, _addedProducts) &&
            const DeepCollectionEquality()
                .equals(other._occupiedSlots, _occupiedSlots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_addedProducts),
      const DeepCollectionEquality().hash(_occupiedSlots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      __$$ShopStateImplCopyWithImpl<_$ShopStateImpl>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final ShopStatus status,
      final List<ProductModel> products,
      final List<AddedProductModel> addedProducts,
      final List<OccupiedSlotsModel> occupiedSlots}) = _$ShopStateImpl;

  @override
  ShopStatus get status;
  @override
  List<ProductModel> get products;
  @override
  List<AddedProductModel> get addedProducts;
  @override
  List<OccupiedSlotsModel> get occupiedSlots;
  @override
  @JsonKey(ignore: true)
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
