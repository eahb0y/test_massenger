import 'package:flutter/material.dart';
import 'package:test_massenger/core/utils/app_utils.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      bottomSheet: SafeArea(
        minimum: AppUtils.kPaddingHor20Ver14, child: Row(
        children: [
          Ink(

          )
        ],
      ),
      ),
    );
  }
}
