import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_app.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_option.dart';

@RoutePage()
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
                    AutoRouter.of(context).push(const DummyUiRoute());
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Simple Calculator',
                  subTitle:
                      'Creating calculator app that consists add, divide, substract, multiply function',
                  onTap: () {
                    AutoRouter.of(context).push(const SimpleCalculatorRoute());
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Input Validation',
                  subTitle: 'Play around with email input & password input',
                  onTap: () {
                    AutoRouter.of(context).push(const InputValidationRoute());
                  },
                ),
                UIHelper.divider(height: 70, thickness: 2),
                ChooseOption(
                  title: 'Counter App',
                  subTitle:
                      'Goes to main home page and choose between playground or Pixels ',
                  onTap: () {
                    AutoRouter.of(context).push(const CounterRoute());
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
                    // showModalBottomSheet(
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //     builder: (context) {
                    //       return Padding(
                    //         padding: UIHelper.padding(
                    //             top: 50, horizontal: UIHelper.defaultPadding),
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               'Choose your app',
                    //               style: context.textTheme.headlineMedium,
                    //             ),
                    //             UIHelper.verticalSpace(20),
                    //             InkWell(
                    //               onTap: () {
                    //                 AutoRouter.of(context)
                    //                     .replaceAll([const PixelSplashRoute()]);
                    //               },
                    //               child: Container(
                    //                 padding: UIHelper.padding(left: 20),
                    //                 width: double.infinity,
                    //                 height: 70,
                    //                 decoration: BoxDecoration(
                    //                   border: Border.all(
                    //                     color: ColorConstant.grey,
                    //                     width: 0.5,
                    //                   ),
                    //                   borderRadius:
                    //                       UIHelper.borderRadiusCircular(
                    //                           all: 10),
                    //                 ),
                    //                 child: SvgPicture.asset(
                    //                   AssetsPath.pixelNewsLogo,
                    //                   fit: BoxFit.scaleDown,
                    //                   alignment: Alignment.centerLeft,
                    //                 ),
                    //               ),
                    //             ),
                    //             UIHelper.verticalSpace(20),
                    //             InkWell(
                    //               onTap: () {
                    //                 AutoRouter.of(context)
                    //                     .replaceAll([const PlaygroundSplash()]);
                    //               },
                    //               child: Container(
                    //                 padding: UIHelper.padding(left: 20),
                    //                 width: double.infinity,
                    //                 height: 70,
                    //                 decoration: BoxDecoration(
                    //                   border: Border.all(
                    //                     color: ColorConstant.grey,
                    //                     width: 0.5,
                    //                   ),
                    //                   borderRadius:
                    //                       UIHelper.borderRadiusCircular(
                    //                           all: 10),
                    //                 ),
                    //                 child: Image.asset(
                    //                   AssetsPath.playgroundLogo,
                    //                   fit: BoxFit.scaleDown,
                    //                   alignment: Alignment.centerLeft,
                    //                 ),
                    //               ),
                    //             ),
                    //             UIHelper.verticalSpace(20),
                    //             InkWell(
                    //               onTap: () {
                    //                 AutoRouter.of(context)
                    //                     .replaceAll([const MainRoute()]);
                    //               },
                    //               child: Container(
                    //                 padding: UIHelper.padding(left: 20),
                    //                 width: double.infinity,
                    //                 height: 70,
                    //                 decoration: BoxDecoration(
                    //                   border: Border.all(
                    //                     color: ColorConstant.grey,
                    //                     width: 0.5,
                    //                   ),
                    //                   borderRadius:
                    //                       UIHelper.borderRadiusCircular(
                    //                           all: 10),
                    //                 ),
                    //                 child: Row(
                    //                   children: [
                    //                     SvgPicture.asset(
                    //                       AssetsPath.restartIcon,
                    //                       fit: BoxFit.scaleDown,
                    //                       alignment: Alignment.centerLeft,
                    //                     ),
                    //                     Text(
                    //                       'Reset App',
                    //                       style: context.textTheme.bodyMedium,
                    //                     )
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       );
                    //     },
                    //     context: context);
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
