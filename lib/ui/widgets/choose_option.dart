import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';

import '../../core/common/colors_const.dart';

class ChooseOption extends StatelessWidget {
  String title;
  String subTitle;
  Function() onTap;
  Widget? widget;

  ChooseOption(
      {required this.title,
      required this.subTitle,
      required this.onTap,
      this.widget,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.headlineMedium!.copyWith(
            color: ColorConstant.primary,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 5),
            Expanded(
              child: Text(
                subTitle,
                style: context.textTheme.bodySmall!.copyWith(
                  color: ColorConstant.grey,
                ),
              ),
            ),
            InkWell(
              onTap: onTap,
              child: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
