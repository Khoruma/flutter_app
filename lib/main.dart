import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/counter_cubit/counter_cubit.dart';
import 'package:flutter_bootcamp/application/navbar/navbar_cubit.dart';
import 'package:flutter_bootcamp/core/common/theme.dart';
import 'package:flutter_bootcamp/core/injection/injection.dart';
import 'package:flutter_bootcamp/core/routes/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final router = AppRouter();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () {
          return MaterialApp.router(
            theme: AppTheme.theme,
            debugShowCheckedModeBanner: false,
            routerConfig: router.config(),
            // routes: {
            //   '/': (context) => const MainPage(),
            //   '/PG-splash': (context) => const PlaygroundSplash(),
            //   '/choose-section': (context) => const PlaygroundMenuPage(),
            //   '/dummy-ui': (context) => const DummyUiPage(),
            //   '/dummy-ui-next': (context) => const DummyUiNextPage(),
            //   '/input-validation': (context) => const InputValidationPage(),
            //   '/simple-calculator': (context) => const SimpleCalculatorPage(),
            //   '/counter': (context) => const CounterPage(),
            //   '/pixel-splash': (context) => const PixelSplashPage(),
            //   '/pixel-main': (context) => const PixelMainPage(),
            //   '/pixel-home': (context) => const PixelHomePage(),
            //   '/pixel-explore': (context) => const PixelExplorePage(),
            //   '/pixel-collection': (context) => const PixelCollectionPage(),
            //   '/pixel-setting': (context) => const PixelSettingPage(),
            //   '/pixel-top': (context) => const PixelTopStoriesPage(),
            //   '/pixel-top-detail': (context) =>
            //       const PixelTopStoriesDetailPage(),
            // },
          );
        },
      ),
    );
  }
}
