import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';

@RoutePage()
class PlaygroundSplash extends StatefulWidget {
  const PlaygroundSplash({super.key});

  @override
  State<PlaygroundSplash> createState() => _PlaygroundSplashState();
}

class _PlaygroundSplashState extends State<PlaygroundSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      AutoRouter.of(context).replaceAll([const PlaygroundMenuRoute()]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsPath.playgroundSplash),
      ),
    );
  }
}
