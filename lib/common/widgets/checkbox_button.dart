import 'package:flutter/material.dart';

class CheckBoxButton extends StatelessWidget {
  const CheckBoxButton({
    required this.title,
    super.key,
    this.onChanged,
    this.value,
  });

  final String title;
  final ValueChanged<bool?>? onChanged;
  final bool? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(title),
      ],
    );
  }
}
