// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CategoriesEnumEnumMap, e))
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
      limit: json['limit'] as int? ?? 25,
      offset: json['offset'] as int? ?? 0,
    );

Map<String, dynamic> _$$_NewsFilterModelToJson(_$_NewsFilterModel instance) =>
    <String, dynamic>{
      'keywords': instance.keywords,
      'date': instance.date.map((e) => e.toIso8601String()).toList(),
      'sort': _$SortEnumEnumMap[instance.sort]!,
      'countries': instance.countries,
      'categories':
          instance.categories.map((e) => _$CategoriesEnumEnumMap[e]!).toList(),
      'sources': instance.sources,
      'languages':
          instance.languages.map((e) => _$LanguagesEnumEnumMap[e]!).toList(),
      'limit': instance.limit,
      'offset': instance.offset,
    };

const _$SortEnumEnumMap = {
  SortEnum.publishedDesc: 'published_desc',
  SortEnum.publishedAsc: 'published_asc',
  SortEnum.popularity: 'popularity',
};

const _$CategoriesEnumEnumMap = {
  CategoriesEnum.all: '',
  CategoriesEnum.general: 'general',
  CategoriesEnum.business: 'business',
  CategoriesEnum.entertainment: 'entertainment',
  CategoriesEnum.health: 'health',
  CategoriesEnum.science: 'science',
  CategoriesEnum.sports: 'sports',
  CategoriesEnum.technology: 'technology',
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

_$_NewsFilterReactiveModel _$$_NewsFilterReactiveModelFromJson(
        Map<String, dynamic> json) =>
    _$_NewsFilterReactiveModel(
      date: json['date'] == null
          ? null
          : DateGroup.fromJson(json['date'] as Map<String, dynamic>),
      countries: json['countries'] == null
          ? null
          : CountriesGroup.fromJson(json['countries'] as Map<String, dynamic>),
      sources: json['sources'] == null
          ? null
          : SourcesGroup.fromJson(json['sources'] as Map<String, dynamic>),
      languages: json['languages'] == null
          ? null
          : LanguagesGroup.fromJson(json['languages'] as Map<String, dynamic>),
      categories: json['categories'] == null
          ? null
          : CategoriesGroup.fromJson(
              json['categories'] as Map<String, dynamic>),
      sort: $enumDecodeNullable(_$SortEnumEnumMap, json['sort']) ??
          SortEnum.publishedDesc,
      limit: json['limit'] as int? ?? 25,
      offset: json['offset'] as int? ?? 0,
    );

Map<String, dynamic> _$$_NewsFilterReactiveModelToJson(
        _$_NewsFilterReactiveModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'countries': instance.countries,
      'sources': instance.sources,
      'languages': instance.languages,
      'categories': instance.categories,
      'sort': _$SortEnumEnumMap[instance.sort]!,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$_DateGroup _$$_DateGroupFromJson(Map<String, dynamic> json) => _$_DateGroup(
      dateIn: json['dateIn'] == null
          ? null
          : DateTime.parse(json['dateIn'] as String),
      dateOut: json['dateOut'] == null
          ? null
          : DateTime.parse(json['dateOut'] as String),
    );

Map<String, dynamic> _$$_DateGroupToJson(_$_DateGroup instance) =>
    <String, dynamic>{
      'dateIn': instance.dateIn?.toIso8601String(),
      'dateOut': instance.dateOut?.toIso8601String(),
    };

_$_SourcesGroup _$$_SourcesGroupFromJson(Map<String, dynamic> json) =>
    _$_SourcesGroup(
      dateIn: (json['dateIn'] as List<dynamic>?)
              ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dateOut: (json['dateOut'] as List<dynamic>?)
              ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SourcesGroupToJson(_$_SourcesGroup instance) =>
    <String, dynamic>{
      'dateIn': instance.dateIn,
      'dateOut': instance.dateOut,
    };

_$_CountriesGroup _$$_CountriesGroupFromJson(Map<String, dynamic> json) =>
    _$_CountriesGroup(
      countryIn: (json['countryIn'] as List<dynamic>?)
              ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      countryOut: (json['countryOut'] as List<dynamic>?)
              ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CountriesGroupToJson(_$_CountriesGroup instance) =>
    <String, dynamic>{
      'countryIn': instance.countryIn,
      'countryOut': instance.countryOut,
    };

_$_LanguagesGroup _$$_LanguagesGroupFromJson(Map<String, dynamic> json) =>
    _$_LanguagesGroup(
      languagesIn: (json['languagesIn'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LanguagesEnumEnumMap, e))
              .toList() ??
          const [],
      languagesOut: (json['languagesOut'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LanguagesEnumEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LanguagesGroupToJson(_$_LanguagesGroup instance) =>
    <String, dynamic>{
      'languagesIn':
          instance.languagesIn.map((e) => _$LanguagesEnumEnumMap[e]!).toList(),
      'languagesOut':
          instance.languagesOut.map((e) => _$LanguagesEnumEnumMap[e]!).toList(),
    };

_$_CategoriesGroup _$$_CategoriesGroupFromJson(Map<String, dynamic> json) =>
    _$_CategoriesGroup(
      categoriesIn: (json['categoriesIn'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CategoriesEnumEnumMap, e))
              .toList() ??
          const [],
      categoriesOut: (json['categoriesOut'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CategoriesEnumEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoriesGroupToJson(_$_CategoriesGroup instance) =>
    <String, dynamic>{
      'categoriesIn': instance.categoriesIn
          .map((e) => _$CategoriesEnumEnumMap[e]!)
          .toList(),
      'categoriesOut': instance.categoriesOut
          .map((e) => _$CategoriesEnumEnumMap[e]!)
          .toList(),
    };

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

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: json['name'] as String,
      code: json['code'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'url': instance.url,
    };
