import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_massenger/core/theme/app_text_style.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';
import 'package:test_massenger/core/utils/app_utils.dart';
import 'package:test_massenger/generated/l10n.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: Padding(
            padding: AppUtils.kPaddingHor20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalization.current.chats,
                  style: AppTextStyle.appBarText,
                ),
                AppUtils.kBoxHeight6,
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: AppLocalization.current.search,
                    isDense: true,
                    contentPadding: AppUtils.kPaddingHor20Ver14,
                    fillColor: AppColors.itemBack,
                    prefixIcon: Padding(
                      padding: AppUtils.kPaddingHor8Ver9,
                      child: SvgPicture.asset(
                        "assets/svg/ic_search.svg",
                        height: 24,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
