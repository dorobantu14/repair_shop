import 'package:flutter/material.dart';

class QuantityField extends StatelessWidget {
  const QuantityField({
    required TextEditingController quantityController,
    required FocusNode quantityFocusNode,
    super.key,
    this.onChanged,
  })  : _quantityController = quantityController,
        _quantityFocusNode = quantityFocusNode;

  final TextEditingController _quantityController;
  final FocusNode _quantityFocusNode;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      width: MediaQuery.of(context).size.width * 0.15,
      child: TextFormField(
        controller: _quantityController,
        focusNode: _quantityFocusNode,
        onChanged: onChanged,
      ),
    );
  }
}
