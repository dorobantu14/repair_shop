import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/main_screen/models/added_product_model.dart';
import 'package:repair_shop/features/main_screen/presentation/bloc/shop_bloc.dart';
import 'package:repair_shop/features/main_screen/presentation/widgets/widgets.dart';

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
              if (state.addedProducts.isEmpty) const _NoProductsText(),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ProductField(
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
    if (selectedProduct == null) {
      showDialog<void>(
        context: context,
        builder: (_) => const _NoProductSelectedError(),
      );
      return;
    }
    _quantityController.text = '1';
    _quantityFocusNode.unfocus();
    final product = state.products.firstWhere(
      (element) => element.name == selectedProduct,
    );

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
    setState(
      () {
        quantity = 1;
        shouldClearOnSubmit = true;
        selectedProduct = null;
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
}

class _NoProductsText extends StatelessWidget {
  const _NoProductsText();

  @override
  Widget build(BuildContext context) {
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

class _NoProductSelectedError extends StatelessWidget {
  const _NoProductSelectedError();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: AlertDialog(
        title: const Text(Strings.errorText),
        content: const Text(Strings.noProductSelectedText),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(Strings.okText),
          ),
        ],
      ),
    );
  }
}
