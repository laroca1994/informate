import 'package:auto_route/auto_route.dart';
import 'package:informate/presentation/screens/home_screen.dart';
import 'package:informate/presentation/screens/news_screen.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: NewsRoute.page,
              initial: true,
            ),
          ],
        ),
      ];
}
