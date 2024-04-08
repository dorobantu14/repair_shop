import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repair_shop/main_screen/models/product_model.dart';

part 'shop_bloc.freezed.dart';

part 'shop_event.dart';

part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(const ShopState()) {
    on<_AddProductEvent>(_onAddProduct);
    on<_RemoveProductEvent>(_onRemoveProduct);
  }

  Future<void> _onAddProduct(
    _AddProductEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    final products = List<ProductModel>.from(state.products);
    products.add(event.product);
    emit(state.copyWith(status: ShopStatus.success, products: products));
  }

  Future<void> _onRemoveProduct(
    _RemoveProductEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    final products = List<ProductModel>.from(state.products);
    products.remove(event.product);
    emit(state.copyWith(status: ShopStatus.success, products: products));
  }
}
