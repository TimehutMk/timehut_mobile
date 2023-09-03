import 'package:auto_route/auto_route.dart';
import 'package:timehut_mobile/routers/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MenuRoute.page),
        AutoRoute(page: ShiftsRoute.page),
        AutoRoute(page: TimeCountRoute.page),
        AutoRoute(page: HelpRoute.page),
        AutoRoute(page: InformationRoute.page),
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
      ];
}
