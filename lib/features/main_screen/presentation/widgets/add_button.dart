import 'package:flutter/material.dart';
import 'package:repair_shop/core/core.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: onTap,
        child: const CircleAvatar(
          backgroundColor: AppColors.primary,
          radius: 16,
          child: Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
