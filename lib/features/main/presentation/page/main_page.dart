import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_massenger/core/utils/app_utils.dart';
import 'package:test_massenger/core/widgets/custom_loading.dart';
import 'package:test_massenger/features/main/presentation/bloc/main_page_bloc.dart';
import 'package:test_massenger/features/main/presentation/page/mixin/main_mixin.dart';
import 'package:test_massenger/features/main/presentation/page/widgets/main_appBar_widget.dart';
import 'package:test_massenger/features/main/presentation/page/widgets/main_chats_item_widget.dart';
import 'package:test_massenger/injection_container.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with MainMixin {
  @override
  void initState() {
    initController();
    context.read<MainPageBloc>().add(const MainInitialCallEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        return Scaffold(
          body: state.isLoading
              ? const Center(
                  child: CustomLoadingWidget(),
                )
              : CustomScrollView(
                  slivers: [
                    MainAppBarWidget(controller: searchController),
                    AppUtils.kGapBoxHeight24,
                    AppUtils.kGapDivider,
                    SliverList.separated(
                      itemBuilder: (_, index) => MainChatsItemWidget(chat: state.mainChats?.chats?[index]),
                      separatorBuilder: (_, __) => AppUtils.kDividerHor20,
                      itemCount: state.mainChats?.chats?.length ?? 0,
                    ),
                  ],
                ),
        );
      },
    );
  }
}
