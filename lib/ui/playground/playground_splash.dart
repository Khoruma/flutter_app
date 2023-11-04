import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';

class PlaygroundSplash extends StatefulWidget {
  const PlaygroundSplash({super.key});

  @override
  State<PlaygroundSplash> createState() => _PlaygroundSplashState();
}

class _PlaygroundSplashState extends State<PlaygroundSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/choose-section', (route) => false);
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
