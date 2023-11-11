import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/main_app/main_app_cubit.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_svg/svg.dart';

class ChooseAppWidget extends StatelessWidget {
  final bool showResetButton;
  const ChooseAppWidget({
    super.key,
    this.showResetButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose your app", style: context.textTheme.displayMedium),
        UIHelper.verticalSpace(10),
        InkWell(
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.pixelNews());
            AutoRouter.of(context).replaceAll([const PixelSplashRoute()]);
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: UIHelper.padding(all: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstant.lightGrey,
                width: 0.5,
              ),
              borderRadius: UIHelper.borderRadiusCircular(all: 5),
            ),
            child: SvgPicture.asset(AssetsPath.pixelNewsLogo),
          ),
        ),
        UIHelper.verticalSpace(10),
        InkWell(
          onTap: () {
            context
                .read<MainAppCubit>()
                .changeApp(const MainAppType.playground());
            AutoRouter.of(context).replaceAll([const PlaygroundSplash()]);
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: UIHelper.padding(all: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstant.lightGrey,
                width: 0.5,
              ),
              borderRadius: UIHelper.borderRadiusCircular(all: 5),
            ),
            child: Image.asset(AssetsPath.playgroundLogo),
          ),
        ),
        UIHelper.verticalSpace(10),
        if (showResetButton)
          InkWell(
            onTap: () {
              context.read<MainAppCubit>().changeApp(const MainAppType.none());
              AutoRouter.of(context).replaceAll([const MainRoute()]);
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: UIHelper.padding(all: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConstant.lightGrey,
                  width: 0.5,
                ),
                borderRadius: UIHelper.borderRadiusCircular(all: 5),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(AssetsPath.restartIcon),
                  UIHelper.horizontalSpace(5),
                  Text('Reset App', style: context.textTheme.displayMedium),
                ],
              ),
            ),
          )
      ],
    );
  }
}
