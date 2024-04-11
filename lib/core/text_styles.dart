import 'package:flutter/material.dart';
import 'package:repair_shop/core/colors.dart';

abstract class TextStyles {
  static const blackBoldTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.text,
    fontWeight: FontWeight.bold,
  );

  static const blackNormalTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.text,
  );

  static const blackBoldButtonTextStyle = TextStyle(
    fontSize: 12,
    color: AppColors.text,
    fontWeight: FontWeight.bold,
  );

  static const whiteButtonTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.white,
  );

  static const whiteBoldTextStyle = TextStyle(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static const whiteNormalTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.secondary,
  );

  static const normalGreyTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.lightGrey,
  );

  static const boldGreyTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey,
  );

  static const smallBoldGreyTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey,
  );

  static const greySubtitleTextStyle = TextStyle(
    fontSize: 18,
    color: AppColors.lightGrey,
  );
}
