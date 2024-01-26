import 'package:flutter/material.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';

class AppTextStyle {
  AppTextStyle._();

  static const appBarText = TextStyle(
    color: AppColors.black,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  static const listTileTitle = TextStyle(
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static const listTileSub = TextStyle(
    color: AppColors.darkGray,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const hintStyle = TextStyle(
    color: AppColors.hintColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
