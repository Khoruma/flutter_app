import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/theme.dart';
import 'package:flutter_bootcamp/ui/playground/dummy_ui_next_page.dart';
import 'package:flutter_bootcamp/ui/playground/dummy_ui_page.dart';
import 'package:flutter_bootcamp/ui/playground/input_validation_page.dart';
import 'package:flutter_bootcamp/ui/playground/playground_menu_page.dart';
import 'package:flutter_bootcamp/ui/playground/playground_splash.dart';
import 'package:flutter_bootcamp/ui/playground/simple_calculator_page.dart';
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
      designSize: const Size(360, 640),
      builder: () {
        return MaterialApp(
          theme: AppTheme.theme,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const PlaygroundSplash(),
            '/choose-section': (context) => const PlaygroundMenuPage(),
            '/dummy-ui': (context) => const DummyUiPage(),
            '/dummy-ui-next': (context) => const DummyUiNextPage(),
            '/input-validation': (context) => const InputValidationPage(),
            '/simple-calculator': (context) => const SimpleCalculatorPage(),
          },
        );
      },
    );
  }
}
