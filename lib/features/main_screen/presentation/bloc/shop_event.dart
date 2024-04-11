part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.getProducts() = _GetProductsEvent;

  const factory ShopEvent.addProduct({
    required AddedProductModel product,
  }) = _AddProductEvent;

  const factory ShopEvent.removeProduct({
    required AddedProductModel product,
  }) = _RemoveProductEvent;

  const factory ShopEvent.getOccupiedSlots() = _GetOccupiedSlotsEvent;

  const factory ShopEvent.bookSlot({
    required OccupiedSlotsModel occupiedSlot,
  }) = _BookSlotEvent;
}
