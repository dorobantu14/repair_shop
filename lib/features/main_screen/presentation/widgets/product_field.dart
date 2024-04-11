import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/common/common_widgets.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/main_screen/presentation/bloc/shop_bloc.dart';

class ProductField extends StatefulWidget {
  const ProductField({
    required this.shouldClearOnSubmit,
    required this.onSelected,
    required this.optionsBuilder,
    super.key,
  });

  final bool shouldClearOnSubmit;
  final ValueSetter<String> onSelected;
  final FutureOr<Iterable<String>> Function(TextEditingValue) optionsBuilder;

  @override
  State<ProductField> createState() => _ProductFieldState();
}

class _ProductFieldState extends State<ProductField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(left: 16),
          width: MediaQuery.of(context).size.width * 0.5,
          child: SuggestionsField(
            hintText: Strings.productText,
            onSelected: widget.onSelected,
            optionsBuilder: widget.optionsBuilder,
            suffixIcon: const Icon(Icons.search),
            shouldClearOnSubmit: widget.shouldClearOnSubmit,
          ),
        );
      },
    );
  }
}
