import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/extensions/string_extensions.dart';
import 'package:informate/data/provider/commons_providers/commons_providers.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/router/router.dart';
import 'package:informate/presentation/widgets/dialogs/scaling_dialog.dart';
import 'package:informate/presentation/widgets/input/primary_search.dart';
import 'package:informate/presentation/widgets/text/primary_title.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeIndex = 0;
    return AutoTabsRouter.tabBar(
      animatePageTransition: true,
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
            title: const PrimaryTitle(
              'Infórmate',
              fontSize: 25,
            ),
            centerTitle: false,
            actions: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadiusDefault + 5),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ).horizontalPadding(10),
            ],
          ),
          body: Consumer(
            builder: (_, WidgetRef ref, __) {
              return Column(
                children: [
                  const SizedBox(height: 10),
                  PrimarySearch(
                    labelText: 'Buscar noticias',
                    showFilter: true,
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) =>  ScalingDialog(child: Container(),),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    filter: (filter) => ref
                        .read(
                          newsFilterProvider(
                            CategoriesEnum.values.elementAt(homeIndex),
                          ).notifier,
                        )
                        .searchKeywords(filter),
                  ).horizontalPadding(20),
                  const SizedBox(height: 10),
                  TabBar(
                    controller: controller,
                    labelColor: Colors.white,
                    labelStyle: const TextStyle(
                        fontSize: fontSizeDefault, fontWeight: FontWeight.w800),
                    unselectedLabelStyle:
                        const TextStyle(fontSize: fontSizeDefault - 2),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadiusDefault),
                      color: Theme.of(context).primaryColor,
                    ),
                    isScrollable: true,
                    tabs: CategoriesEnum.values
                        .map((category) => Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(category.iconData),
                                  const SizedBox(width: 5),
                                  Text(category.value.capitalizeFirstLetter()),
                                ],
                              ).horizontalPadding(15),
                            ))
                        .toList(),
                  ),
                  Expanded(child: child),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
