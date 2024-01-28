import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_massenger/core/theme/color/app_color.dart';

class CustomLoadingWidget extends StatelessWidget {
  final Color? color;

  const CustomLoadingWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Platform.isAndroid
            ? CircularProgressIndicator(
                color: color ?? AppColors.selectedItemColor,
              )
            : CupertinoActivityIndicator(
                color: color,
              ),
      ],
    );
  }
}
