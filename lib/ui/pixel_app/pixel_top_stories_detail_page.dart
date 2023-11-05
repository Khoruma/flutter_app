import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_card.dart';

class PixelTopStoriesDetailPage extends StatelessWidget {
  const PixelTopStoriesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: UIHelper.setHeight(18),
          ),
        ),
        title: Text(
          'Top Stories',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(top: 20, horizontal: UIHelper.paddingContent),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SECTION :',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: ColorConstant.grey),
                ),
                Text(
                  'ARTS',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: ColorConstant.primary),
                ),
              ],
            ),
            UIHelper.verticalSpace(20),
            const DummyCard(),
            const DummyCard(),
            const DummyCard(),
            const DummyCard(),
          ],
        ),
      ),
    );
  }
}
