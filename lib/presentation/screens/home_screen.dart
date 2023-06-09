import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/extensions/string_extensions.dart';
import 'package:informate/presentation/router/router.dart';
import 'package:informate/presentation/delegates/primary_search_delegate.dart';
import 'package:informate/presentation/widgets/text/primary_title.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeIndex = 0;
    return AutoTabsRouter.tabBar(
      homeIndex: homeIndex,
      routes: CategoriesEnum.values
          .map(
            (category) => NewsRoute(category: category),
          )
          .toList(),
      builder: (context, child, controller) {
        homeIndex = controller.index;
        return Scaffold(
          appBar: AppBar(
            title: const PrimaryTitle('Infórmate'),
            actions: [
              IconButton(
                onPressed: () => showSearch(
                  context: context,
                  delegate: PrimarySearchDelegate(
                      CategoriesEnum.values.elementAt(homeIndex)),
                ),
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
            ],
            bottom: TabBar(
              controller: controller,
              labelStyle: const TextStyle(fontSize: fontSizeDefault,fontWeight: FontWeight.w800),
              unselectedLabelStyle: const TextStyle(fontSize: fontSizeDefault-2),
              isScrollable: true,
              tabs: CategoriesEnum.values
                  .map(
                    (category) => Tab(
                      text: category.value.capitalizeFirstLetter(),
                    ),
                  )
                  .toList(),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
