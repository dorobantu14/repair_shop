part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default(ShopStatus.initial) ShopStatus status,
    @Default([]) List<ProductModel> products,
  }) = _ShopState;
}

enum ShopStatus {
  initial,
  loading,
  success,
  error,
}
