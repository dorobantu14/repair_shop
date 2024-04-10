import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/main_screen/domain/bloc/shop_bloc.dart';
import 'package:repair_shop/main_screen/models/added_product_model.dart';
import 'package:repair_shop/main_screen/presentation/widgets/widgets.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  int quantity = 1;
  String? selectedProduct;
  bool shouldClearOnSubmit = false;
  final TextEditingController _quantityController = TextEditingController();
  final FocusNode _quantityFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _quantityController.text = '1';
    _quantityFocusNode.addListener(refreshCallback);
    _quantityController.addListener(refreshCallback);
    context.read<ShopBloc>().add(
          const ShopEvent.getProducts(),
        );
  }

  void refreshCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  Strings.task1Text,
                  style: TextStyles.blackBoldTextStyle,
                ),
              ),
              const ProductsTable(),
              if (state.addedProducts.isEmpty) _getNoProductsText(),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ProductField(
                      selectedProduct: selectedProduct ?? '',
                      shouldClearOnSubmit: shouldClearOnSubmit,
                      onSelected: onSelected,
                      optionsBuilder: optionsBuilder,
                    ),
                    QuantityField(
                      quantityController: _quantityController,
                      quantityFocusNode: _quantityFocusNode,
                      onChanged: onQuantityChanged,
                    ),
                    AddButton(
                      onTap: () => onAddProduct(state, context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void onAddProduct(ShopState state, BuildContext context) {
    _quantityController.text = '1';
    _quantityFocusNode.unfocus();
    final product =
        state.products.firstWhere((element) => element.name == selectedProduct);

    if (state.addedProducts.any((element) => element.name == product.name)) {
      final productToUpdate = state.addedProducts
          .firstWhere((element) => element.name == product.name);
      context.read<ShopBloc>().add(
            ShopEvent.updateProduct(
              product: AddedProductModel(
                name: product.name,
                price: product.price,
                quantity: quantity + productToUpdate.quantity,
                totalPrice:
                    (quantity + productToUpdate.quantity) * product.price,
              ),
            ),
          );
    } else {
      context.read<ShopBloc>().add(
            ShopEvent.addProduct(
              product: AddedProductModel(
                name: product.name,
                price: product.price,
                quantity: quantity,
                totalPrice: quantity * product.price,
              ),
            ),
          );
    }
    setState(
      () {
        quantity = 1;
        shouldClearOnSubmit = true;
      },
    );
  }

  void onQuantityChanged(String value) {
    if (value.isNotEmpty) {
      setState(() {
        quantity = int.parse(value);
      });
    }
  }

  void onSelected(String selection) {
    setState(() {
      selectedProduct = selection;
    });
  }

  FutureOr<Iterable<String>> optionsBuilder(TextEditingValue value) {
    shouldClearOnSubmit = false;
    final products = context.read<ShopBloc>().state.products;
    if (value.text.isEmpty) {
      return products.map((e) => e.name);
    }
    return products
        .where(
          (element) =>
              element.name.toLowerCase().contains(value.text.toLowerCase()),
        )
        .map((e) => e.name);
  }

  Widget _getNoProductsText() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Strings.noProductsText),
        ],
      ),
    );
  }
}
