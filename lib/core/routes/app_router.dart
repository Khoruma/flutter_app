import 'package:auto_route/auto_route.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: MainRoute.page, initial: true),

    //PLAYGROUND
    AutoRoute(page: PlaygroundSplash.page),
    AutoRoute(page: PlaygroundMenuRoute.page),
    AutoRoute(page: InputValidationRoute.page),
    AutoRoute(page: CounterRoute.page),
    AutoRoute(page: DummyUiRoute.page),
    AutoRoute(page: DummyUiNextRoute.page),
    AutoRoute(page: SimpleCalculatorRoute.page),
    AutoRoute(page: HelloWorldRoute.page),

    //PIXEL
    AutoRoute(page: PixelSplashRoute.page),
    AutoRoute(page: PixelMainRoute.page),
    AutoRoute(page: PixelHomeRoute.page),
    AutoRoute(page: PixelExploreRoute.page),
    AutoRoute(page: PixelCollectionRoute.page),
    AutoRoute(page: PixelSettingRoute.page),
    AutoRoute(page: PixelTopStoriesRoute.page),
    AutoRoute(page: PixelTopStoriesDetailRoute.page),
  ];
}
