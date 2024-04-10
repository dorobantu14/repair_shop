part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default(ShopStatus.initial) ShopStatus status,
    @Default([]) List<ProductModel> products,
    @Default([]) List<AddedProductModel> addedProducts,
    @Default([]) List<OccupiedSlotsModel> occupiedSlots,
  }) = _ShopState;
}

enum ShopStatus {
  initial,
  loading,
  success,
  error,
}
