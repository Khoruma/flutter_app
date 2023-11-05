import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_option.dart';
import 'package:flutter_svg/svg.dart';

class PixelSettingPage extends StatelessWidget {
  const PixelSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(top: 50, horizontal: UIHelper.paddingContent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Setting',
              style: context.textTheme.displayMedium,
            ),
            UIHelper.verticalSpace(20),
            ChooseOption(
              title: 'Celar Cache',
              subTitle: 'Reset all of your stats including your favorite ',
              onTap: () {},
            ),
            UIHelper.divider(height: 70, thickness: 2),
            ChooseOption(
              title: 'Switch App',
              subTitle:
                  'Goes to main home page and choose between playground or Pixels',
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    builder: (context) {
                      return Padding(
                        padding: UIHelper.padding(
                            top: 50, horizontal: UIHelper.defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose your app',
                              style: context.textTheme.headlineMedium,
                            ),
                            UIHelper.verticalSpace(20),
                            InkWell(
                              child: Container(
                                padding: UIHelper.padding(left: 20),
                                width: double.infinity,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorConstant.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius:
                                      UIHelper.borderRadiusCircular(all: 10),
                                ),
                                child: SvgPicture.asset(
                                  AssetsPath.pixelNewsLogo,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                            UIHelper.verticalSpace(20),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/PG-splash', (route) => false);
                              },
                              child: Container(
                                padding: UIHelper.padding(left: 20),
                                width: double.infinity,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorConstant.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius:
                                      UIHelper.borderRadiusCircular(all: 10),
                                ),
                                child: Image.asset(
                                  AssetsPath.playgroundLogo,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                            UIHelper.verticalSpace(20),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/', (route) => false);
                              },
                              child: Container(
                                padding: UIHelper.padding(left: 20),
                                width: double.infinity,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorConstant.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius:
                                      UIHelper.borderRadiusCircular(all: 10),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      AssetsPath.restartIcon,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Text(
                                      'Reset App',
                                      style: context.textTheme.bodyMedium,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
