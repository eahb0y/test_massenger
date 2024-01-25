import 'package:flutter/material.dart';
import 'package:test_massenger/core/theme/app_text_style.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';
import 'package:test_massenger/core/utils/app_utils.dart';

class MainChatsItemWidget extends StatelessWidget {
  const MainChatsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: AppUtils.kPaddingHor20,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
      leading: Ink(
        decoration: const BoxDecoration(
          borderRadius: AppUtils.kBorderRadius50,
          color: AppColors.green,
        ),
        height: 50,
        width: 50,
        child: const Center(child: Text("DD")),
      ),
      title: const Text("Виктор Власов", style: AppTextStyle.listTileTitle),
      subtitle: const Text("Я готов", style: AppTextStyle.listTileSub),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Вчера",
            style: AppTextStyle.listTileSub,
          ),
        ],
      ),
    );
  }
}
