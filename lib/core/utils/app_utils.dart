import 'package:flutter/material.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';

class AppUtils {
  ///Padding
  static const kPaddingHor20 = EdgeInsets.symmetric(horizontal: 20);
  static const kPaddingHor20Ver14 = EdgeInsets.symmetric(horizontal: 20,vertical: 14);

  ///SizedBox
  static const kBoxHeight6 = SizedBox(height: 6);
  static const kBoxHeight24 = SizedBox(height: 24);

  ///Divider
  static const kDivider = Divider(
    color: AppColors.dividerColor,
    thickness: 1,
  );

  static const kDividerHor20 = Divider(
    thickness: 1,
    color: AppColors.dividerColor,
    indent: 20,
    endIndent: 20,
  );

  ///kGap
  static const kGapDivider = SliverToBoxAdapter(
    child: kDivider,
  );

  static const kGapBoxHeight24 = SliverToBoxAdapter(
    child: kBoxHeight24,
  );

  static const kGapDividerHor20 = SliverToBoxAdapter(
    child: Divider(
      thickness: 1,
      color: AppColors.dividerColor,
      indent: 20,
      endIndent: 20,
    ),
  );

  ///borderRadius
  static const kBorderRadius50 = BorderRadius.all(Radius.circular(50));

}
