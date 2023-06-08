// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsFilterModel _$NewsFilterModelFromJson(Map<String, dynamic> json) {
  return _NewsFilterModel.fromJson(json);
}

/// @nodoc
mixin _$NewsFilterModel {
  @FormControlAnnotation()
  String get keywords => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<DateTime> get date => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  SortEnum get sort => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<String> get countries => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<Source> get sources => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<LanguagesEnum> get languages => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<CategoriesEnum> get categories => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  int get limit => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsFilterModelCopyWith<NewsFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFilterModelCopyWith<$Res> {
  factory $NewsFilterModelCopyWith(
          NewsFilterModel value, $Res Function(NewsFilterModel) then) =
      _$NewsFilterModelCopyWithImpl<$Res, NewsFilterModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation()
          String keywords,
      @FormArrayAnnotation()
          List<DateTime> date,
      @FormControlAnnotation()
          SortEnum sort,
      @FormArrayAnnotation()
          List<String> countries,
      @FormArrayAnnotation()
          List<Source> sources,
      @FormArrayAnnotation()
          List<LanguagesEnum> languages,
      @FormArrayAnnotation()
          List<CategoriesEnum> categories,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          int limit,
      @FormControlAnnotation()
          int offset});
}

/// @nodoc
class _$NewsFilterModelCopyWithImpl<$Res, $Val extends NewsFilterModel>
    implements $NewsFilterModelCopyWith<$Res> {
  _$NewsFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keywords = null,
    Object? date = null,
    Object? sort = null,
    Object? countries = null,
    Object? sources = null,
    Object? languages = null,
    Object? categories = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEnum,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsFilterModelCopyWith<$Res>
    implements $NewsFilterModelCopyWith<$Res> {
  factory _$$_NewsFilterModelCopyWith(
          _$_NewsFilterModel value, $Res Function(_$_NewsFilterModel) then) =
      __$$_NewsFilterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation()
          String keywords,
      @FormArrayAnnotation()
          List<DateTime> date,
      @FormControlAnnotation()
          SortEnum sort,
      @FormArrayAnnotation()
          List<String> countries,
      @FormArrayAnnotation()
          List<Source> sources,
      @FormArrayAnnotation()
          List<LanguagesEnum> languages,
      @FormArrayAnnotation()
          List<CategoriesEnum> categories,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          int limit,
      @FormControlAnnotation()
          int offset});
}

/// @nodoc
class __$$_NewsFilterModelCopyWithImpl<$Res>
    extends _$NewsFilterModelCopyWithImpl<$Res, _$_NewsFilterModel>
    implements _$$_NewsFilterModelCopyWith<$Res> {
  __$$_NewsFilterModelCopyWithImpl(
      _$_NewsFilterModel _value, $Res Function(_$_NewsFilterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keywords = null,
    Object? date = null,
    Object? sort = null,
    Object? countries = null,
    Object? sources = null,
    Object? languages = null,
    Object? categories = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_NewsFilterModel(
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value._date
          : date // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEnum,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsFilterModel extends _NewsFilterModel {
  const _$_NewsFilterModel(
      {@FormControlAnnotation()
          this.keywords = '',
      @FormArrayAnnotation()
          final List<DateTime> date = const [],
      @FormControlAnnotation()
          this.sort = SortEnum.publishedDesc,
      @FormArrayAnnotation()
          final List<String> countries = const [],
      @FormArrayAnnotation()
          final List<Source> sources = const [],
      @FormArrayAnnotation()
          final List<LanguagesEnum> languages = const [],
      @FormArrayAnnotation()
          final List<CategoriesEnum> categories = const [],
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          this.limit = 25,
      @FormControlAnnotation()
          this.offset = 0})
      : _date = date,
        _countries = countries,
        _sources = sources,
        _languages = languages,
        _categories = categories,
        super._();

  factory _$_NewsFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsFilterModelFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation()
  final String keywords;
  final List<DateTime> _date;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<DateTime> get date {
    if (_date is EqualUnmodifiableListView) return _date;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_date);
  }

  @override
  @JsonKey()
  @FormControlAnnotation()
  final SortEnum sort;
  final List<String> _countries;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<String> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<Source> _sources;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<Source> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  final List<LanguagesEnum> _languages;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<LanguagesEnum> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<CategoriesEnum> _categories;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<CategoriesEnum> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  final int limit;
  @override
  @JsonKey()
  @FormControlAnnotation()
  final int offset;

  @override
  String toString() {
    return 'NewsFilterModel(keywords: $keywords, date: $date, sort: $sort, countries: $countries, sources: $sources, languages: $languages, categories: $categories, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsFilterModel &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords) &&
            const DeepCollectionEquality().equals(other._date, _date) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      keywords,
      const DeepCollectionEquality().hash(_date),
      sort,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_categories),
      limit,
      offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsFilterModelCopyWith<_$_NewsFilterModel> get copyWith =>
      __$$_NewsFilterModelCopyWithImpl<_$_NewsFilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsFilterModelToJson(
      this,
    );
  }
}

abstract class _NewsFilterModel extends NewsFilterModel {
  const factory _NewsFilterModel(
      {@FormControlAnnotation()
          final String keywords,
      @FormArrayAnnotation()
          final List<DateTime> date,
      @FormControlAnnotation()
          final SortEnum sort,
      @FormArrayAnnotation()
          final List<String> countries,
      @FormArrayAnnotation()
          final List<Source> sources,
      @FormArrayAnnotation()
          final List<LanguagesEnum> languages,
      @FormArrayAnnotation()
          final List<CategoriesEnum> categories,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          final int limit,
      @FormControlAnnotation()
          final int offset}) = _$_NewsFilterModel;
  const _NewsFilterModel._() : super._();

  factory _NewsFilterModel.fromJson(Map<String, dynamic> json) =
      _$_NewsFilterModel.fromJson;

  @override
  @FormControlAnnotation()
  String get keywords;
  @override
  @FormArrayAnnotation()
  List<DateTime> get date;
  @override
  @FormControlAnnotation()
  SortEnum get sort;
  @override
  @FormArrayAnnotation()
  List<String> get countries;
  @override
  @FormArrayAnnotation()
  List<Source> get sources;
  @override
  @FormArrayAnnotation()
  List<LanguagesEnum> get languages;
  @override
  @FormArrayAnnotation()
  List<CategoriesEnum> get categories;
  @override
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  int get limit;
  @override
  @FormControlAnnotation()
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_NewsFilterModelCopyWith<_$_NewsFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SourcesFilterModel _$SourcesFilterModelFromJson(Map<String, dynamic> json) {
  return _SourcesFilterModel.fromJson(json);
}

/// @nodoc
mixin _$SourcesFilterModel {
  @FormControlAnnotation(validators: [requiredValidator])
  String get search => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<String> get countries => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<LanguagesEnum> get languages => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<CategoriesEnum> get categories => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  int get limit => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcesFilterModelCopyWith<SourcesFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesFilterModelCopyWith<$Res> {
  factory $SourcesFilterModelCopyWith(
          SourcesFilterModel value, $Res Function(SourcesFilterModel) then) =
      _$SourcesFilterModelCopyWithImpl<$Res, SourcesFilterModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String search,
      @FormArrayAnnotation()
          List<String> countries,
      @FormArrayAnnotation()
          List<LanguagesEnum> languages,
      @FormArrayAnnotation()
          List<CategoriesEnum> categories,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          int limit,
      @FormControlAnnotation()
          int offset});
}

/// @nodoc
class _$SourcesFilterModelCopyWithImpl<$Res, $Val extends SourcesFilterModel>
    implements $SourcesFilterModelCopyWith<$Res> {
  _$SourcesFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? countries = null,
    Object? languages = null,
    Object? categories = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourcesFilterModelCopyWith<$Res>
    implements $SourcesFilterModelCopyWith<$Res> {
  factory _$$_SourcesFilterModelCopyWith(_$_SourcesFilterModel value,
          $Res Function(_$_SourcesFilterModel) then) =
      __$$_SourcesFilterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String search,
      @FormArrayAnnotation()
          List<String> countries,
      @FormArrayAnnotation()
          List<LanguagesEnum> languages,
      @FormArrayAnnotation()
          List<CategoriesEnum> categories,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          int limit,
      @FormControlAnnotation()
          int offset});
}

/// @nodoc
class __$$_SourcesFilterModelCopyWithImpl<$Res>
    extends _$SourcesFilterModelCopyWithImpl<$Res, _$_SourcesFilterModel>
    implements _$$_SourcesFilterModelCopyWith<$Res> {
  __$$_SourcesFilterModelCopyWithImpl(
      _$_SourcesFilterModel _value, $Res Function(_$_SourcesFilterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? countries = null,
    Object? languages = null,
    Object? categories = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_SourcesFilterModel(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourcesFilterModel extends _SourcesFilterModel {
  const _$_SourcesFilterModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          this.search = '',
      @FormArrayAnnotation()
          final List<String> countries = const [],
      @FormArrayAnnotation()
          final List<LanguagesEnum> languages = const [],
      @FormArrayAnnotation()
          final List<CategoriesEnum> categories = const [],
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          this.limit = 25,
      @FormControlAnnotation()
          this.offset = 0})
      : _countries = countries,
        _languages = languages,
        _categories = categories,
        super._();

  factory _$_SourcesFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_SourcesFilterModelFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String search;
  final List<String> _countries;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<String> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<LanguagesEnum> _languages;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<LanguagesEnum> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<CategoriesEnum> _categories;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<CategoriesEnum> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  final int limit;
  @override
  @JsonKey()
  @FormControlAnnotation()
  final int offset;

  @override
  String toString() {
    return 'SourcesFilterModel(search: $search, countries: $countries, languages: $languages, categories: $categories, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourcesFilterModel &&
            (identical(other.search, search) || other.search == search) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      search,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_categories),
      limit,
      offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourcesFilterModelCopyWith<_$_SourcesFilterModel> get copyWith =>
      __$$_SourcesFilterModelCopyWithImpl<_$_SourcesFilterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourcesFilterModelToJson(
      this,
    );
  }
}

abstract class _SourcesFilterModel extends SourcesFilterModel {
  const factory _SourcesFilterModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          final String search,
      @FormArrayAnnotation()
          final List<String> countries,
      @FormArrayAnnotation()
          final List<LanguagesEnum> languages,
      @FormArrayAnnotation()
          final List<CategoriesEnum> categories,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          final int limit,
      @FormControlAnnotation()
          final int offset}) = _$_SourcesFilterModel;
  const _SourcesFilterModel._() : super._();

  factory _SourcesFilterModel.fromJson(Map<String, dynamic> json) =
      _$_SourcesFilterModel.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get search;
  @override
  @FormArrayAnnotation()
  List<String> get countries;
  @override
  @FormArrayAnnotation()
  List<LanguagesEnum> get languages;
  @override
  @FormArrayAnnotation()
  List<CategoriesEnum> get categories;
  @override
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  int get limit;
  @override
  @FormControlAnnotation()
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_SourcesFilterModelCopyWith<_$_SourcesFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
