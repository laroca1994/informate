// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commons_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsHash() => r'df4bfa3e15176a87a426d751399e29f3dde74097';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef NewsRef = AutoDisposeFutureProviderRef<BasicResponse<Article>>;

/// See also [news].
@ProviderFor(news)
const newsProvider = NewsFamily();

/// See also [news].
class NewsFamily extends Family<AsyncValue<BasicResponse<Article>>> {
  /// See also [news].
  const NewsFamily();

  /// See also [news].
  NewsProvider call(
    CategoriesEnum category,
  ) {
    return NewsProvider(
      category,
    );
  }

  @override
  NewsProvider getProviderOverride(
    covariant NewsProvider provider,
  ) {
    return call(
      provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsProvider';
}

/// See also [news].
class NewsProvider extends AutoDisposeFutureProvider<BasicResponse<Article>> {
  /// See also [news].
  NewsProvider(
    this.category,
  ) : super.internal(
          (ref) => news(
            ref,
            category,
          ),
          from: newsProvider,
          name: r'newsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$newsHash,
          dependencies: NewsFamily._dependencies,
          allTransitiveDependencies: NewsFamily._allTransitiveDependencies,
        );

  final CategoriesEnum category;

  @override
  bool operator ==(Object other) {
    return other is NewsProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$newsFetchHash() => r'903f081f56b583d6b8975cc26bf6b54180a27b95';
typedef NewsFetchRef = AutoDisposeFutureProviderRef<BasicResponse<Article>>;

/// See also [newsFetch].
@ProviderFor(newsFetch)
const newsFetchProvider = NewsFetchFamily();

/// See also [newsFetch].
class NewsFetchFamily extends Family<AsyncValue<BasicResponse<Article>>> {
  /// See also [newsFetch].
  const NewsFetchFamily();

  /// See also [newsFetch].
  NewsFetchProvider call(
    int pageNo,
  ) {
    return NewsFetchProvider(
      pageNo,
    );
  }

  @override
  NewsFetchProvider getProviderOverride(
    covariant NewsFetchProvider provider,
  ) {
    return call(
      provider.pageNo,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsFetchProvider';
}

/// See also [newsFetch].
class NewsFetchProvider
    extends AutoDisposeFutureProvider<BasicResponse<Article>> {
  /// See also [newsFetch].
  NewsFetchProvider(
    this.pageNo,
  ) : super.internal(
          (ref) => newsFetch(
            ref,
            pageNo,
          ),
          from: newsFetchProvider,
          name: r'newsFetchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsFetchHash,
          dependencies: NewsFetchFamily._dependencies,
          allTransitiveDependencies: NewsFetchFamily._allTransitiveDependencies,
        );

  final int pageNo;

  @override
  bool operator ==(Object other) {
    return other is NewsFetchProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$sourcesHash() => r'46abfd5aeeebaedc4d155c6a29ae4d463b42b843';
typedef SourcesRef = AutoDisposeFutureProviderRef<BasicResponse<Source>>;

/// See also [sources].
@ProviderFor(sources)
const sourcesProvider = SourcesFamily();

/// See also [sources].
class SourcesFamily extends Family<AsyncValue<BasicResponse<Source>>> {
  /// See also [sources].
  const SourcesFamily();

  /// See also [sources].
  SourcesProvider call({
    String? source,
  }) {
    return SourcesProvider(
      source: source,
    );
  }

  @override
  SourcesProvider getProviderOverride(
    covariant SourcesProvider provider,
  ) {
    return call(
      source: provider.source,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sourcesProvider';
}

/// See also [sources].
class SourcesProvider extends AutoDisposeFutureProvider<BasicResponse<Source>> {
  /// See also [sources].
  SourcesProvider({
    this.source,
  }) : super.internal(
          (ref) => sources(
            ref,
            source: source,
          ),
          from: sourcesProvider,
          name: r'sourcesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sourcesHash,
          dependencies: SourcesFamily._dependencies,
          allTransitiveDependencies: SourcesFamily._allTransitiveDependencies,
        );

  final String? source;

  @override
  bool operator ==(Object other) {
    return other is SourcesProvider && other.source == source;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, source.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$newsFilterHash() => r'da95c322b343e76086b84924ae0ddc23694b881d';

abstract class _$NewsFilter
    extends BuildlessAutoDisposeNotifier<NewsFilterModel> {
  late final CategoriesEnum category;

  NewsFilterModel build(
    CategoriesEnum category,
  );
}

/// See also [NewsFilter].
@ProviderFor(NewsFilter)
const newsFilterProvider = NewsFilterFamily();

/// See also [NewsFilter].
class NewsFilterFamily extends Family<NewsFilterModel> {
  /// See also [NewsFilter].
  const NewsFilterFamily();

  /// See also [NewsFilter].
  NewsFilterProvider call(
    CategoriesEnum category,
  ) {
    return NewsFilterProvider(
      category,
    );
  }

  @override
  NewsFilterProvider getProviderOverride(
    covariant NewsFilterProvider provider,
  ) {
    return call(
      provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsFilterProvider';
}

/// See also [NewsFilter].
class NewsFilterProvider
    extends AutoDisposeNotifierProviderImpl<NewsFilter, NewsFilterModel> {
  /// See also [NewsFilter].
  NewsFilterProvider(
    this.category,
  ) : super.internal(
          () => NewsFilter()..category = category,
          from: newsFilterProvider,
          name: r'newsFilterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsFilterHash,
          dependencies: NewsFilterFamily._dependencies,
          allTransitiveDependencies:
              NewsFilterFamily._allTransitiveDependencies,
        );

  final CategoriesEnum category;

  @override
  bool operator ==(Object other) {
    return other is NewsFilterProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  NewsFilterModel runNotifierBuild(
    covariant NewsFilter notifier,
  ) {
    return notifier.build(
      category,
    );
  }
}

String _$sourcesFilterHash() => r'6aef71d7475a697edef7a004b4b0f1204d7f13a6';

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
