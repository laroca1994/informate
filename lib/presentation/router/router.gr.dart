// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    NewsRoute.name: (routeData) {
      final args =
          routeData.argsAs<NewsRouteArgs>(orElse: () => const NewsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsScreen(
          key: args.key,
          category: args.category,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<NewsRouteArgs> {
  NewsRoute({
    Key? key,
    CategoriesEnum category = CategoriesEnum.all,
    List<PageRouteInfo>? children,
  }) : super(
          NewsRoute.name,
          args: NewsRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<NewsRouteArgs> page = PageInfo<NewsRouteArgs>(name);
}

class NewsRouteArgs {
  const NewsRouteArgs({
    this.key,
    this.category = CategoriesEnum.all,
  });

  final Key? key;

  final CategoriesEnum category;

  @override
  String toString() {
    return 'NewsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
