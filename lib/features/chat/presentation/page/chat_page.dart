import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';
import 'package:test_massenger/core/utils/app_utils.dart';
import 'package:test_massenger/generated/l10n.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          titleSpacing: 0,
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            leading: Ink(
              decoration: const BoxDecoration(
                borderRadius: AppUtils.kBorderRadius50,
                color: AppColors.green,
              ),
              height: 50,
              width: 50,
              child: const Center(child: Text("DD")),
            ),
            title: const Text("Виктор Власов"),
            subtitle: const Text("В сети"),
          ),
          bottom: const PreferredSize(
              preferredSize: Size(double.infinity, 20),
              child: Divider(
                color: AppColors.dividerColor,
              ))),
      body: Container(),
      bottomNavigationBar: Ink(
        padding: AppUtils.kPadT10,
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
          color: AppColors.dividerColor,
        ))),
        child: SafeArea(
          minimum: AppUtils.kPaddingHor20Ver14.copyWith(
            bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Ink(
                height: 42,
                width: 42,
                padding: AppUtils.kPadAll,
                decoration: const BoxDecoration(
                  borderRadius: AppUtils.kBorderRadius12,
                  color: AppColors.itemBack,
                ),
                child: SvgPicture.asset("assets/svg/ic_doc.svg"),
              ),
              AppUtils.kBoxWidth8,
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: AppLocalization.current.massage),
                ),
              ),
              AppUtils.kBoxWidth8,
              InkWell(
                borderRadius: AppUtils.kBorderRadius12,
                onTap: () {},
                child: Ink(
                  height: 42,
                  width: 42,
                  padding: AppUtils.kPadAll,
                  decoration: const BoxDecoration(
                    borderRadius: AppUtils.kBorderRadius12,
                    color: AppColors.itemBack,
                  ),
                  child: const Icon(Icons.send),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
