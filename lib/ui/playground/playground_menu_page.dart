import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_option.dart';
import 'package:flutter_svg/svg.dart';

class PlaygroundMenuPage extends StatelessWidget {
  const PlaygroundMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UIHelper.padding(
                top: 50,
                left: UIHelper.defaultPadding,
                right: UIHelper.defaultPadding),
            child: Text(
              'Choose Page',
              style: context.textTheme.displayLarge,
            ),
          ),
          UIHelper.verticalSpace(30),
          Container(
            padding: UIHelper.padding(
              left: UIHelper.defaultPadding,
              right: UIHelper.defaultPadding,
            ),
            child: Column(
              children: [
                ChooseOption(
                  title: 'Dummy UI',
                  subTitle:
                      'Practice flutter UI and get familiar with UI Widgets',
                  onTap: () {
                    Navigator.pushNamed(context, '/dummy-ui');
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Simple Calculator',
                  subTitle:
                      'Creating calculator app that consists add, divide, substract, multiply function',
                  onTap: () {
                    Navigator.pushNamed(context, '/simple-calculator');
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Input Validation',
                  subTitle: 'Play around with email input & password input',
                  onTap: () {
                    Navigator.pushNamed(context, '/input-validation');
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Counter App',
                  subTitle:
                      'Goes to main home page and choose between playground or Pixels ',
                  onTap: () {
                    Navigator.pushNamed(context, '/counter');
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Switch App',
                  subTitle:
                      'Goes to main home page and choose between playground or Pixels ',
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
                                Container(
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
                                UIHelper.verticalSpace(20),
                                Container(
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
                                UIHelper.verticalSpace(20),
                                Container(
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
                              ],
                            ),
                          );
                        },
                        context: context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
