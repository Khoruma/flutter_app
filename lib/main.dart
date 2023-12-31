import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/main_app/main_app_cubit.dart';
import 'package:flutter_bootcamp/application/pixel/navbar/navbar_cubit.dart';
import 'package:flutter_bootcamp/application/playground/counter/counter_cubit.dart';
import 'package:flutter_bootcamp/application/playground/input_validator/input_validator_cubit.dart';
import 'package:flutter_bootcamp/core/common/theme.dart';
import 'package:flutter_bootcamp/core/injection/injection.dart';
import 'package:flutter_bootcamp/core/routes/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
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
        BlocProvider(
          create: (context) => MainAppCubit(),
        ),
        BlocProvider(
          create: (context) => InputValidatorCubit(),
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
