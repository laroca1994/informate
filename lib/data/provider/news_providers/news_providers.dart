import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/data/models/filter_model.dart';
import 'package:informate/data/provider/dio_providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_providers.g.dart';

@riverpod
class NewsFilter extends _$NewsFilter {
  @override
  NewsFilterModel build() => const NewsFilterModel();

  void updateValue(NewsFilterModel model) => state = state.copyWith(
        categories: model.categories,
        countries: model.countries,
        languages: model.languages,
        sort: model.sort,
        offset: model.offset,
        limit: model.limit,
        date: model.date,
        keywords: model.keywords,
        sources: model.sources,
      );
}

@riverpod
Future<BasicResponse<Article>> news(NewsRef ref) async {
  final api = ref.watch(apiProvider);
  return api.news();
}

@riverpod
class SourcesFilter extends _$SourcesFilter {
  @override
  SourcesFilterModel build() => const SourcesFilterModel();

  void updateValue(SourcesFilterModel model) => state = state.copyWith(
        search: model.search,
        countries: model.countries,
        languages: model.languages,
        categories: model.categories,
        limit: model.limit,
        offset: model.offset,
      );
}

@riverpod
Future<BasicResponse<Source>> sources(SourcesRef ref) async {
  final api = ref.watch(apiProvider);
  return api.sources('');
}
