import 'package:flutter/material.dart';
import 'package:repair_shop/core/colors.dart';

abstract class TextStyles {
  static const boldSubtitleTextStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const normalBoldTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const blackButtonTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.text,
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

  static const greySubtitleTextStyle = TextStyle(
    fontSize: 18,
    color: AppColors.lightGrey,
  );
}