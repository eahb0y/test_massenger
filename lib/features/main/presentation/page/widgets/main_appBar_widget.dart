import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_massenger/core/theme/app_text_style.dart';
import 'package:test_massenger/core/utils/app_utils.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      bottom: PreferredSize(
          preferredSize: Size(double.infinity, 60), child: Padding(
            padding: AppUtils.kPaddingHor20,
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Чаты",
                  style: AppTextStyle.appBarText,
                ),
                AppUtils.kBoxHeight6,
                TextField(
                        decoration: InputDecoration(
                          prefixIcon: SvgPicture.asset("assets/svg/ic_search.svg"),
                border: const OutlineInputBorder()
                        )
                      ),
              ],
            ),
          )),
    );
  }
}
