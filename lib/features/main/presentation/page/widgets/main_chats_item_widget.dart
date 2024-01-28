import 'package:flutter/material.dart';
import 'package:test_massenger/core/theme/app_text_style.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';
import 'package:test_massenger/core/utils/app_utils.dart';
import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';
import 'package:test_massenger/router/rout_name.dart';

class MainChatsItemWidget extends StatelessWidget {
  const MainChatsItemWidget({
    super.key,
    required this.chat,
  });

  final ChatEntity? chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(
          context,
          Rout.chat,
        );
      },
      contentPadding: AppUtils.kPaddingHor20,
      // dense: true,
      visualDensity: VisualDensity.compact,
      minVerticalPadding: 0,
      leading: Ink(
        decoration: const BoxDecoration(
          borderRadius: AppUtils.kBorderRadius50,
          color: AppColors.green,
        ),
        height: 50,
        width: 50,
        child: const Center(child: Text("DD")),
      ),
      title: Text(chat?.recipient ?? "", style: AppTextStyle.listTileTitle),
      subtitle: Text(chat?.massage ?? "", style: AppTextStyle.listTileSub),
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
