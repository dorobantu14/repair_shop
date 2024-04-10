import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repair_shop/main_screen/domain/repository/shop_repository.dart';
import 'package:repair_shop/main_screen/models/added_product_model.dart';
import 'package:repair_shop/main_screen/models/occupied_slots_model.dart';
import 'package:repair_shop/main_screen/models/product_model.dart';

part 'shop_event.dart';

part 'shop_state.dart';

part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc(this._repository) : super(const ShopState()) {
    on<_GetProductsEvent>(_onGetProducts);
    on<_AddProductEvent>(_onAddProduct);
    on<_RemoveProductEvent>(_onRemoveProduct);
    on<_UpdateProductEvent>(_onUpdateProduct);
    on<_GetOccupiedSlotsEvent>(_onGetOccupiedSlots);
  }

  final ShopRepository _repository;

  Future<void> _onAddProduct(
    _AddProductEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    emit(
      state.copyWith(
        status: ShopStatus.success,
        addedProducts: [...state.addedProducts, event.product],
      ),
    );
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
    emit(state.copyWith(status: ShopStatus.loading));
    try {
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

  Future<void> _onUpdateProduct(
    _UpdateProductEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(status: ShopStatus.loading));
    emit(
      state.copyWith(
        status: ShopStatus.success,
        addedProducts: state.addedProducts
            .map(
              (product) =>
                  product.name == event.product.name ? event.product : product,
            )
            .toList(),
      ),
    );
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
}
