import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/data/provider/news_providers/news_providers.dart';
import 'package:informate/presentation/widgets/article_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, WidgetRef ref, __) {
          final news = ref.watch(newsProvider);
          return news.when(
            data: (response) => ListView.builder(
              itemCount: response.data.length,
              itemBuilder: (context, index) => ArticleWidget(
                response.data[index],
              ),
            ),
            error: (error, _) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
