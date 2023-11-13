import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/main_app/main_app_cubit.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_app.dart';

import 'core/utils/ui_helper.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration.zero, () {
      context.read<MainAppCubit>().state.type.when(
          none: () {},
          pixelNews: () {
            AutoRouter.of(context).replaceAll([const PixelSplashRoute()]);
          },
          playground: () {
            AutoRouter.of(context).replaceAll([const PlaygroundSplash()]);
          },
          helloWorld: () {
            AutoRouter.of(context).replaceAll([const HelloWorldRoute()]);
          });
    });
    return BlocListener<MainAppCubit, MainAppState>(
      listener: (context, state) {
        state.type.when(
          none: () {},
          pixelNews: () {
            AutoRouter.of(context).replaceAll([const PixelSplashRoute()]);
          },
          playground: () {
            AutoRouter.of(context).replaceAll([const PlaygroundSplash()]);
          },
          helloWorld: () {
            AutoRouter.of(context).replaceAll([const HelloWorldRoute()]);
          },
        );
      },
      child: Scaffold(
        body: SingleChildScrollView(
          padding: UIHelper.padding(vertical: 30, horizontal: 20),
          child: const ChooseAppWidget(),
        ),
      ),
    );
  }
}
