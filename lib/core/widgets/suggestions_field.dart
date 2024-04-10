import 'dart:async';

import 'package:flutter/material.dart';

class SuggestionsField extends StatelessWidget {
  const SuggestionsField({
    required this.hintText,
    required this.onSelected,
    required this.optionsBuilder,
    required this.shouldClearOnSubmit,
    super.key,
    this.suffixIcon,
  });

  final String hintText;
  final ValueSetter<String> onSelected;
  final FutureOr<Iterable<String>> Function(TextEditingValue) optionsBuilder;
  final Widget? suffixIcon;
  final bool shouldClearOnSubmit;

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      optionsBuilder: optionsBuilder,
      onSelected: (String selection) {
        onSelected(selection);
        FocusScope.of(context).unfocus();
      },
      displayStringForOption: (String option) => option,
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController fieldController,
        FocusNode fieldFocusNode,
        VoidCallback onFieldSubmitted,
      ) {
        if (shouldClearOnSubmit) {
          fieldController.clear();
        }
        return TextField(
          controller: fieldController,
          focusNode: fieldFocusNode,
          onSubmitted: (_) {
            onFieldSubmitted();
          },
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        );
      },
    );
  }
}
