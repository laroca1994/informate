// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SourcesFilterModel _$$_SourcesFilterModelFromJson(
        Map<String, dynamic> json) =>
    _$_SourcesFilterModel(
      search: json['search'] as String? ?? '',
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LanguagesEnumEnumMap, e))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CategoriesEnumEnumMap, e))
              .toList() ??
          const [],
      limit: json['limit'] as int? ?? 25,
      offset: json['offset'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SourcesFilterModelToJson(
        _$_SourcesFilterModel instance) =>
    <String, dynamic>{
      'search': instance.search,
      'countries': instance.countries,
      'languages':
          instance.languages.map((e) => _$LanguagesEnumEnumMap[e]!).toList(),
      'categories':
          instance.categories.map((e) => _$CategoriesEnumEnumMap[e]!).toList(),
      'limit': instance.limit,
      'offset': instance.offset,
    };

const _$LanguagesEnumEnumMap = {
  LanguagesEnum.ar: 'ar',
  LanguagesEnum.de: 'de',
  LanguagesEnum.en: 'en',
  LanguagesEnum.es: 'es',
  LanguagesEnum.fr: 'fr',
  LanguagesEnum.he: 'he',
  LanguagesEnum.it: 'it',
  LanguagesEnum.nl: 'nl',
  LanguagesEnum.no: 'no',
  LanguagesEnum.pt: 'pt',
  LanguagesEnum.ru: 'ru',
  LanguagesEnum.se: 'se',
  LanguagesEnum.zh: 'zh',
};

const _$CategoriesEnumEnumMap = {
  CategoriesEnum.general: 'general',
  CategoriesEnum.business: 'business',
  CategoriesEnum.entertainment: 'entertainment',
  CategoriesEnum.health: 'health',
  CategoriesEnum.science: 'science',
  CategoriesEnum.sports: 'sports',
  CategoriesEnum.technology: 'technology',
};

_$_NewsFilterModel _$$_NewsFilterModelFromJson(Map<String, dynamic> json) =>
    _$_NewsFilterModel(
      keywords: json['keywords'] as String? ?? '',
      date: (json['date'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          const [],
      sort: $enumDecodeNullable(_$SortEnumEnumMap, json['sort']) ??
          SortEnum.publishedDesc,
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LanguagesEnumEnumMap, e))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CategoriesEnumEnumMap, e))
              .toList() ??
          const [],
      limit: json['limit'] as int? ?? 25,
      offset: json['offset'] as int? ?? 0,
    );

Map<String, dynamic> _$$_NewsFilterModelToJson(_$_NewsFilterModel instance) =>
    <String, dynamic>{
      'keywords': instance.keywords,
      'date': instance.date.map((e) => e.toIso8601String()).toList(),
      'sort': _$SortEnumEnumMap[instance.sort]!,
      'countries': instance.countries,
      'sources': instance.sources,
      'languages':
          instance.languages.map((e) => _$LanguagesEnumEnumMap[e]!).toList(),
      'categories':
          instance.categories.map((e) => _$CategoriesEnumEnumMap[e]!).toList(),
      'limit': instance.limit,
      'offset': instance.offset,
    };

const _$SortEnumEnumMap = {
  SortEnum.publishedDesc: 'published_desc',
  SortEnum.publishedAsc: 'published_asc',
  SortEnum.popularity: 'popularity',
};
