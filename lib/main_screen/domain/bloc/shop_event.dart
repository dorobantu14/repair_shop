part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.addProduct({
    required ProductModel product,
  }) = _AddProductEvent;

  const factory ShopEvent.removeProduct({
    required ProductModel product,
  }) = _RemoveProductEvent;
}
