import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/data/provider/news_providers/commons_providers.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/article_widget.dart';
import 'package:informate/presentation/widgets/infinite_scroll/list.dart';
import 'package:informate/presentation/widgets/input/primary_search.dart';
import 'package:informate/presentation/widgets/loading_provider_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (_, WidgetRef ref, __) {
            return Column(
              children: [
                PrimarySearch(
                  filter: (filter) =>
                      ref.read(newsFilterProvider.notifier).keywords(filter),
                      showFilter: true,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: LoadingProviderWidget<BasicResponse<Article>>(
                      async: ref.watch(newsProvider),
                      onRefreshIndicatot: () => ref.refresh(newsProvider.future),
                      onRefresh: () => ref.refresh(newsProvider),
                      data: (data) => PagedListViewWidget<Article>(
                        invisibleItemsThreshold: 5,
                        firstElements: data.data,
                        firstPage: 1,
                        totalPages:
                            (data.pagination.total / data.pagination.limit).ceil(),
                        fetch: (page) => ref.watch(newsFetchProvider(page).future),
                        itemBuilder: (context, element, index) =>
                            ArticleWidget(element),
                      ),
                    ),
                  ),
                ),
              ],
            ).horizontalPadding(10);
          },
        ),
      ),
    );
  }
}
