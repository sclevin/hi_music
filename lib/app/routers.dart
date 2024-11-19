import 'package:auto_route/auto_route.dart';
import 'package:hi_music/app/routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page,initial: false),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: HomeRoute.page,initial: true)
  ];

  @override
  List<AutoRouteGuard> get guards => [
  ];
}