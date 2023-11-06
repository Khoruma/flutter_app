import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/chip_custom.dart';

@RoutePage()
class PixelTopStoriesPage extends StatelessWidget {
  const PixelTopStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pop();
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
        padding: UIHelper.padding(top: 20, horizontal: UIHelper.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CHOOSE SECTION',
              style: context.textTheme.displaySmall?.copyWith(
                color: ColorConstant.green,
              ),
            ),
            UIHelper.verticalSpace(20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ChipCustom(
                  onTap: () {
                    AutoRouter.of(context)
                        .replaceAll([const PixelTopStoriesDetailRoute()]);
                  },
                  title: 'arts',
                ),
                ChipCustom(
                  onTap: () {},
                  title: 'automobiles',
                ),
                ChipCustom(
                  onTap: () {},
                  title: 'food',
                ),
                ChipCustom(
                  onTap: () {},
                  title: 'book / review',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
