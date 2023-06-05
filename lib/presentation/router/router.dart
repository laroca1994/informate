import 'package:auto_route/auto_route.dart';
import 'package:informate/presentation/screens/home/home_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
        ),
      ];
}
