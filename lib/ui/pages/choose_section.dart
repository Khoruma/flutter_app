import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_option.dart';

class ChooseSection extends StatelessWidget {
  const ChooseSection({super.key});

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
                  onTap: () {},
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Input Validation',
                  subTitle: 'Play around with email input & password input',
                  onTap: () {},
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Switch App',
                  subTitle:
                      'Goes to main home page and choose between playground or Pixels ',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
