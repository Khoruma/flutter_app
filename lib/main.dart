import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/navbar/navbar_cubit.dart';
import 'package:flutter_bootcamp/core/common/theme.dart';
import 'package:flutter_bootcamp/main_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_collection_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_explore_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_home_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_main_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_setting_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_splash_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_top_stories_detail_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_top_stories_page.dart';
import 'package:flutter_bootcamp/ui/playground/counter_page.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () {
          return MaterialApp(
            theme: AppTheme.theme,
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const MainPage(),
              '/PG-splash': (context) => const PlaygroundSplash(),
              '/choose-section': (context) => const PlaygroundMenuPage(),
              '/dummy-ui': (context) => const DummyUiPage(),
              '/dummy-ui-next': (context) => const DummyUiNextPage(),
              '/input-validation': (context) => const InputValidationPage(),
              '/simple-calculator': (context) => const SimpleCalculatorPage(),
              '/counter': (context) => const CounterPage(),
              '/pixel-splash': (context) => const PixelSplashPage(),
              '/pixel-main': (context) => const PixelMainPage(),
              '/pixel-home': (context) => const PixelHomePage(),
              '/pixel-explore': (context) => const PixelExplorePage(),
              '/pixel-collection': (context) => const PixelCollectionPage(),
              '/pixel-setting': (context) => const PixelSettingPage(),
              '/pixel-top': (context) => const PixelTopStoriesPage(),
              '/pixel-top-detail': (context) =>
                  const PixelTopStoriesDetailPage(),
            },
          );
        },
      ),
    );
  }
}
