import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/theme.dart';
import 'package:flutter_bootcamp/ui/pages/choose_section.dart';
import 'package:flutter_bootcamp/ui/pages/dummy_ui_page.dart';
import 'package:flutter_bootcamp/ui/pages/splah_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          theme: AppTheme.theme,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const SplashPage(),
            '/choose-section': (context) => const ChooseSection(),
            '/dummy-ui': (context) => const DummyUiPage(),
          },
        );
      },
    );
  }
}
