import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class PixelSplashPage extends StatefulWidget {
  const PixelSplashPage({super.key});

  @override
  State<PixelSplashPage> createState() => _PixelSplashPageState();
}

class _PixelSplashPageState extends State<PixelSplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        AutoRouter.of(context).replaceAll([const PixelMainRoute()]);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AssetsPath.pixelsNewsSplash),
      ),
    );
  }
}
