import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repair_shop/features/main_screen/domain/repository/shop_repository.dart';
import 'package:repair_shop/features/main_screen/models/added_product_model.dart';
import 'package:repair_shop/features/main_screen/models/occupied_slots_model.dart';
import 'package:repair_shop/features/main_screen/models/product_model.dart';
part 'shop_event.dart';

part 'shop_state.dart';

part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc(this._repository) : super(const ShopState()) {
    on<_GetProductsEvent>(_onGetProducts);
    on<_AddProductEvent>(_onAddProduct);
    on<_RemoveProductEvent>(_onRemoveProduct);
    on<_GetOccupiedSlotsEvent>(_onGetOccupiedSlots);
    on<_BookSlotEvent>(_onBookSlot);
  }

  final ShopRepository _repository;

  Future<void> _onAddProduct(
    _AddProductEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    if (state.addedProducts
        .any((element) => element.name == event.product.name)) {
      final oldProduct = state.addedProducts
          .firstWhere((element) => element.name == event.product.name);
      final newProduct = AddedProductModel(
        name: oldProduct.name,
        quantity: oldProduct.quantity + event.product.quantity,
        price: oldProduct.price,
        totalPrice: oldProduct.totalPrice + event.product.totalPrice,
      );
      emit(
        state.copyWith(
          status: ShopStatus.success,
          addedProducts: [
            ...state.addedProducts
                .map((e) => e.name == event.product.name ? newProduct : e),
          ],
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: ShopStatus.success,
          addedProducts: [
            ...state.addedProducts,
            event.product,
          ],
        ),
      );
    }
  }

  Future<void> _onRemoveProduct(
    _RemoveProductEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    emit(
      state.copyWith(
        status: ShopStatus.success,
        addedProducts: state.addedProducts
            .where((element) => element.name != event.product.name)
            .toList(),
      ),
    );
  }

  Future<void> _onGetProducts(
    _GetProductsEvent event,
    Emitter<ShopState> emit,
  ) async {
    try {
      emit(state.copyWith(status: ShopStatus.loading));

      final products = await _repository.getProducts();
      emit(
        state.copyWith(
          status: ShopStatus.success,
          products: products,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ShopStatus.error));
    }
  }

  Future<void> _onGetOccupiedSlots(
    _GetOccupiedSlotsEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    try {
      final occupiedSlots = await _repository.getOccupiedSlots();
      emit(
        state.copyWith(
          status: ShopStatus.success,
          occupiedSlots: occupiedSlots,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ShopStatus.error));
    }
  }

  Future<void> _onBookSlot(
    _BookSlotEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    emit(
      state.copyWith(
        status: ShopStatus.success,
        bookedSlot: event.occupiedSlot,
      ),
    );
  }
}
