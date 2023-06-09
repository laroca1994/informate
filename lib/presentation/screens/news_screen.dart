import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/data/provider/commons_providers/commons_providers.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/article_widget.dart';
import 'package:informate/presentation/widgets/infinite_scroll/list.dart';
import 'package:informate/presentation/widgets/loading_provider_widget.dart';

@RoutePage()
class NewsScreen extends StatelessWidget {
  const NewsScreen({
    super.key,
    this.category = CategoriesEnum.all,
  });
  final CategoriesEnum category;

  @override
  Widget build(BuildContext context) {
    final provider = newsProvider(category);
    return Scaffold(
      body: Consumer(
        builder: (_, WidgetRef ref, __) {
          return Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: LoadingProviderWidget<BasicResponse<Article>>(
                    async: ref.watch(provider),
                    onRefreshIndicatot: () => ref.refresh(provider.future),
                    onRefresh: () => ref.refresh(provider),
                    data: (data) => PagedListViewWidget<Article>(
                      invisibleItemsThreshold: 5,
                      firstElements: data.data,
                      firstPage: 1,
                      totalPages:
                          (data.pagination.total / data.pagination.limit)
                              .ceil(),
                      fetch: (page) =>
                          ref.watch(newsFetchProvider(page).future),
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
    ).verticalPadding(15);
  }
}
