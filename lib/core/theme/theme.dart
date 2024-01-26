import 'package:flutter/material.dart';
import 'package:test_massenger/core/theme/app_text_style.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';

final appTheme = ThemeData(
    fontFamily: "Gilroy",
    useMaterial3: true,
    applyElevationOverlayColor: true,
    disabledColor: ThemeColors.grey,
    visualDensity: VisualDensity.standard,
    materialTapTargetSize: MaterialTapTargetSize.padded,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      alignLabelWithHint: true,
      hintStyle: AppTextStyle.hintStyle,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(color: ThemeColors.errorColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(color: AppColors.itemBack),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(color: AppColors.itemBack),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(
          color: ThemeColors.grey,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(color: ThemeColors.errorColor),
      ),
      filled: true,
      isDense: true,
      fillColor: AppColors.itemBack,
      floatingLabelAlignment: FloatingLabelAlignment.start,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ));
