import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_app.dart';

import 'core/utils/ui_helper.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration.zero, () {});
    return Scaffold(
      body: SingleChildScrollView(
        padding: UIHelper.padding(vertical: 30, horizontal: 20),
        child: const ChooseAppWidget(),
      ),
    );
  }
}
