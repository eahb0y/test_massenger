import 'package:flutter/material.dart';
import 'package:test_massenger/core/utils/app_utils.dart';
import 'package:test_massenger/features/main/presentation/page/mixin/main_mixin.dart';
import 'package:test_massenger/features/main/presentation/page/widgets/main_appBar_widget.dart';
import 'package:test_massenger/features/main/presentation/page/widgets/main_chats_item_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with MainMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MainAppBarWidget(),
          AppUtils.kGapBoxHeight24,
          AppUtils.kGapDivider,
          SliverList.separated(
            itemBuilder: (_, index) => const MainChatsItemWidget(),
            separatorBuilder: (_, __) => AppUtils.kDividerHor20,
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
