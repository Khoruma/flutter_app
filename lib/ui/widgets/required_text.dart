import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';

class RequiredText extends StatelessWidget {
  String title;

  RequiredText({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIHelper.padding(bottom: 5),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: context.textTheme.headlineSmall,
            ),
            TextSpan(
              text: '*',
              style: context.textTheme.headlineSmall!
                  .copyWith(color: ColorConstant.red),
            ),
          ],
        ),
      ),
    );
  }
}
