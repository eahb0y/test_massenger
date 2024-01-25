import 'package:flutter/cupertino.dart';

mixin MainMixin {
  late TextEditingController searchController;

  void initController() {
    searchController = TextEditingController();
  }

  void disposeController() {
    searchController.dispose();
  }
}
