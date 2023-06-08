// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commons_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsHash() => r'b750f9502b90e9e1d59aab6caf6cceacfcf38c3e';

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
String _$newsFetchHash() => r'f243e816bfd04ece0adad2f5a2930d29dde264b6';

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
