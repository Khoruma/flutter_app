import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_card.dart';
import 'package:flutter_svg/svg.dart';

class PixelHomePage extends StatelessWidget {
  const PixelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(top: 60, horizontal: UIHelper.defaultPadding),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsPath.pixelNewsLogo),
                UIHelper.verticalSpace(20),
                Text(
                  'Top Stories',
                  style: context.textTheme.displayMedium,
                ),
                UIHelper.verticalSpace(5),
                Text(
                  'Top stories from all time',
                  style: context.textTheme.bodySmall,
                ),
                UIHelper.verticalSpace(10),
                Container(
                  width: double.infinity,
                  height: UIHelper.setHeight(40),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.primary, width: 1),
                    borderRadius: UIHelper.borderRadiusCircular(all: 10),
                  ),
                  child: Padding(
                    padding: UIHelper.padding(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Go To Categories Section',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: ColorConstant.primary,
                          ),
                        ),
                        Image.asset(
                          AssetsPath.arrow,
                          width: UIHelper.setHeight(10),
                          height: UIHelper.setHeight(12),
                        )
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpace(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Most Popular Articles',
                          style: context.textTheme.displayMedium,
                        ),
                        Text(
                          'Top articles from last week',
                          style: context.textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Text(
                      'See All',
                      style: context.textTheme.displayMedium
                          ?.copyWith(color: ColorConstant.primary),
                    )
                  ],
                ),
                UIHelper.verticalSpace(20),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: const [
                        DummyCard(),
                        DummyCard(),
                        DummyCard(),
                        DummyCard(),
                        DummyCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
