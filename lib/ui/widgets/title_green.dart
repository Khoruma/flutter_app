import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';

class TitleGreen extends StatelessWidget {
  String title;

  TitleGreen({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIHelper.padding(
        top: 10,
        bottom: 15,
      ),
      child: Text(
        title,
        style: context.textTheme.headlineMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: ColorConstant.green,
        ),
      ),
    );
  }
}
