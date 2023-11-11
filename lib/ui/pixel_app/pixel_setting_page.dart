import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_app.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_option.dart';

@RoutePage()
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
                    borderRadius: UIHelper.borderRadiusCircular(all: 12),
                  ),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: UIHelper.padding(
                          top: 30, horizontal: UIHelper.defaultPadding),
                      child: const ChooseAppWidget(
                        showResetButton: true,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
