import 'dart:async';

import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/extensions/date_extensions.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/data/models/filter_model.dart';
import 'package:informate/data/provider/dio_providers/dio_providers.dart';
import 'package:oxidized/oxidized.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commons_providers.g.dart';

@riverpod
class NewsFilter extends _$NewsFilter {
  @override
  NewsFilterModel build(CategoriesEnum category) {
    return NewsFilterModel(categories: category.isAll ? [] : [category]);
  }

  void searchKeywords(String keywords) =>
      state = state.copyWith(keywords: keywords);

  void filter(NewsFilterModel model) => state = state.copyWith(
        categories: model.categories,
        countries: model.countries,
        languages: model.languages,
        date: model.date,
        sort: model.sort,
        sources: model.sources,
        keywords: state.keywords,
        offset: model.offset,
        limit: model.limit,
      );
}

@riverpod
Future<BasicResponse<Article>> news(
    NewsRef ref, CategoriesEnum category) async {
  final api = ref.watch(apiProvider);
  final filter = ref.watch(newsFilterProvider(category));
  return api.news(
    categories: filter.categories.map((e) => e.name).join(','),
    countries: filter.countries.join(','),
    languages: filter.languages.map((e) => e.name).join(','),
    sort: filter.sort.value,
    offset: filter.offset,
    limit: filter.limit,
    date: filter.date.map((e) => e.formattedDate).join(','),
    keywords: filter.keywords,
    sources: filter.sources.map((e) => e.name).join(','),
  );
}

@riverpod
Future<BasicResponse<Article>> newsFetch(
  NewsFetchRef ref,
  int pageNo,
) async {
  final filter = ref.watch(newsFilterProvider(CategoriesEnum.general));
  final api = ref.watch(apiProvider);
  final response = await api.news(
    categories: filter.categories.map((e) => e.name).join(','),
    countries: filter.countries.join(','),
    languages: filter.languages.map((e) => e.name).join(','),
    sort: filter.sort.value,
    offset: (filter.limit * pageNo),
    limit: filter.limit,
    date: filter.date.map((e) => e.formattedDate).join(','),
    keywords: filter.keywords,
    sources: filter.sources.map((e) => e.name).join(','),
  );
  return response;
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
Future<BasicResponse<Source>> sources(SourcesRef ref, {String? source}) async {
  final api = ref.watch(apiProvider);
  final filter = ref.watch(sourcesFilterProvider);
  return api.sources(
    source ?? filter.search,
    categories: filter.categories.map((e) => e.name).join(','),
    countries: filter.countries.join(','),
    languages: filter.languages.map((e) => e.name).join(','),
    limit: filter.limit,
    offset: filter.offset,
  );
}

@riverpod
Future<Result<List<Country>, ErrorResponse>> countries(CountriesRef ref) async {
  try {
    final countries =  Countries();
    await countries.loadFromHtml();
    return Result.ok(countries.countries);
  } catch (e) {
    return Result.err(ErrorResponse(message: e.toString(), statusCode: 0));
  }
}
