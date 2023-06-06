// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsHash() => r'52077ae4bbb8f1f0e49267c16690f2abda2166dc';

/// See also [news].
@ProviderFor(news)
final newsProvider = AutoDisposeFutureProvider<BasicResponse<Article>>.internal(
  news,
  name: r'newsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewsRef = AutoDisposeFutureProviderRef<BasicResponse<Article>>;
String _$sourcesHash() => r'df482afcac15ac329976f10eb00f9357be287db9';

/// See also [sources].
@ProviderFor(sources)
final sourcesProvider =
    AutoDisposeFutureProvider<BasicResponse<Source>>.internal(
  sources,
  name: r'sourcesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sourcesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SourcesRef = AutoDisposeFutureProviderRef<BasicResponse<Source>>;
String _$newsFilterHash() => r'b44cf748b30f8b87a5ebc4d762fc7850574b0578';

/// See also [NewsFilter].
@ProviderFor(NewsFilter)
final newsFilterProvider =
    AutoDisposeNotifierProvider<NewsFilter, NewsFilterModel>.internal(
  NewsFilter.new,
  name: r'newsFilterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewsFilter = AutoDisposeNotifier<NewsFilterModel>;
String _$sourcesFilterHash() => r'ab28a1abf0cebc51fa1105f480199824a68f8d6b';

/// See also [SourcesFilter].
@ProviderFor(SourcesFilter)
final sourcesFilterProvider =
    AutoDisposeNotifierProvider<SourcesFilter, SourcesFilterModel>.internal(
  SourcesFilter.new,
  name: r'sourcesFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sourcesFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SourcesFilter = AutoDisposeNotifier<SourcesFilterModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
