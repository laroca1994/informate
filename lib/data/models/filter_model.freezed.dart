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
  String get keywords => throw _privateConstructorUsedError;
  List<DateTime> get date => throw _privateConstructorUsedError;
  SortEnum get sort => throw _privateConstructorUsedError;
  List<String> get countries => throw _privateConstructorUsedError;
  List<CategoriesEnum> get categories => throw _privateConstructorUsedError;
  List<Source> get sources => throw _privateConstructorUsedError;
  List<LanguagesEnum> get languages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
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
      {String keywords,
      List<DateTime> date,
      SortEnum sort,
      List<String> countries,
      List<CategoriesEnum> categories,
      List<Source> sources,
      List<LanguagesEnum> languages,
      int limit,
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
    Object? categories = null,
    Object? sources = null,
    Object? languages = null,
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
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
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
      {String keywords,
      List<DateTime> date,
      SortEnum sort,
      List<String> countries,
      List<CategoriesEnum> categories,
      List<Source> sources,
      List<LanguagesEnum> languages,
      int limit,
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
    Object? categories = null,
    Object? sources = null,
    Object? languages = null,
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
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
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
      {this.keywords = '',
      final List<DateTime> date = const [],
      this.sort = SortEnum.publishedDesc,
      final List<String> countries = const [],
      final List<CategoriesEnum> categories = const [],
      final List<Source> sources = const [],
      final List<LanguagesEnum> languages = const [],
      this.limit = 25,
      this.offset = 0})
      : _date = date,
        _countries = countries,
        _categories = categories,
        _sources = sources,
        _languages = languages,
        super._();

  factory _$_NewsFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsFilterModelFromJson(json);

  @override
  @JsonKey()
  final String keywords;
  final List<DateTime> _date;
  @override
  @JsonKey()
  List<DateTime> get date {
    if (_date is EqualUnmodifiableListView) return _date;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_date);
  }

  @override
  @JsonKey()
  final SortEnum sort;
  final List<String> _countries;
  @override
  @JsonKey()
  List<String> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<CategoriesEnum> _categories;
  @override
  @JsonKey()
  List<CategoriesEnum> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Source> _sources;
  @override
  @JsonKey()
  List<Source> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  final List<LanguagesEnum> _languages;
  @override
  @JsonKey()
  List<LanguagesEnum> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'NewsFilterModel(keywords: $keywords, date: $date, sort: $sort, countries: $countries, categories: $categories, sources: $sources, languages: $languages, limit: $limit, offset: $offset)';
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
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
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
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(_languages),
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
      {final String keywords,
      final List<DateTime> date,
      final SortEnum sort,
      final List<String> countries,
      final List<CategoriesEnum> categories,
      final List<Source> sources,
      final List<LanguagesEnum> languages,
      final int limit,
      final int offset}) = _$_NewsFilterModel;
  const _NewsFilterModel._() : super._();

  factory _NewsFilterModel.fromJson(Map<String, dynamic> json) =
      _$_NewsFilterModel.fromJson;

  @override
  String get keywords;
  @override
  List<DateTime> get date;
  @override
  SortEnum get sort;
  @override
  List<String> get countries;
  @override
  List<CategoriesEnum> get categories;
  @override
  List<Source> get sources;
  @override
  List<LanguagesEnum> get languages;
  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_NewsFilterModelCopyWith<_$_NewsFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsFilterReactiveModel _$NewsFilterReactiveModelFromJson(
    Map<String, dynamic> json) {
  return _NewsFilterReactiveModel.fromJson(json);
}

/// @nodoc
mixin _$NewsFilterReactiveModel {
  DateGroup? get date => throw _privateConstructorUsedError;
  CountriesGroup? get countries => throw _privateConstructorUsedError;
  SourcesGroup? get sources => throw _privateConstructorUsedError;
  LanguagesGroup? get languages => throw _privateConstructorUsedError;
  CategoriesGroup? get categories => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  SortEnum get sort => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  int get limit => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsFilterReactiveModelCopyWith<NewsFilterReactiveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFilterReactiveModelCopyWith<$Res> {
  factory $NewsFilterReactiveModelCopyWith(NewsFilterReactiveModel value,
          $Res Function(NewsFilterReactiveModel) then) =
      _$NewsFilterReactiveModelCopyWithImpl<$Res, NewsFilterReactiveModel>;
  @useResult
  $Res call(
      {DateGroup? date,
      CountriesGroup? countries,
      SourcesGroup? sources,
      LanguagesGroup? languages,
      CategoriesGroup? categories,
      @FormControlAnnotation()
          SortEnum sort,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          int limit,
      @FormControlAnnotation()
          int offset});

  $DateGroupCopyWith<$Res>? get date;
  $CountriesGroupCopyWith<$Res>? get countries;
  $SourcesGroupCopyWith<$Res>? get sources;
  $LanguagesGroupCopyWith<$Res>? get languages;
  $CategoriesGroupCopyWith<$Res>? get categories;
}

/// @nodoc
class _$NewsFilterReactiveModelCopyWithImpl<$Res,
        $Val extends NewsFilterReactiveModel>
    implements $NewsFilterReactiveModelCopyWith<$Res> {
  _$NewsFilterReactiveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? countries = freezed,
    Object? sources = freezed,
    Object? languages = freezed,
    Object? categories = freezed,
    Object? sort = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateGroup?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as CountriesGroup?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as SourcesGroup?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as LanguagesGroup?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesGroup?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEnum,
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

  @override
  @pragma('vm:prefer-inline')
  $DateGroupCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateGroupCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountriesGroupCopyWith<$Res>? get countries {
    if (_value.countries == null) {
      return null;
    }

    return $CountriesGroupCopyWith<$Res>(_value.countries!, (value) {
      return _then(_value.copyWith(countries: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SourcesGroupCopyWith<$Res>? get sources {
    if (_value.sources == null) {
      return null;
    }

    return $SourcesGroupCopyWith<$Res>(_value.sources!, (value) {
      return _then(_value.copyWith(sources: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguagesGroupCopyWith<$Res>? get languages {
    if (_value.languages == null) {
      return null;
    }

    return $LanguagesGroupCopyWith<$Res>(_value.languages!, (value) {
      return _then(_value.copyWith(languages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoriesGroupCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoriesGroupCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsFilterReactiveModelCopyWith<$Res>
    implements $NewsFilterReactiveModelCopyWith<$Res> {
  factory _$$_NewsFilterReactiveModelCopyWith(_$_NewsFilterReactiveModel value,
          $Res Function(_$_NewsFilterReactiveModel) then) =
      __$$_NewsFilterReactiveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateGroup? date,
      CountriesGroup? countries,
      SourcesGroup? sources,
      LanguagesGroup? languages,
      CategoriesGroup? categories,
      @FormControlAnnotation()
          SortEnum sort,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          int limit,
      @FormControlAnnotation()
          int offset});

  @override
  $DateGroupCopyWith<$Res>? get date;
  @override
  $CountriesGroupCopyWith<$Res>? get countries;
  @override
  $SourcesGroupCopyWith<$Res>? get sources;
  @override
  $LanguagesGroupCopyWith<$Res>? get languages;
  @override
  $CategoriesGroupCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$_NewsFilterReactiveModelCopyWithImpl<$Res>
    extends _$NewsFilterReactiveModelCopyWithImpl<$Res,
        _$_NewsFilterReactiveModel>
    implements _$$_NewsFilterReactiveModelCopyWith<$Res> {
  __$$_NewsFilterReactiveModelCopyWithImpl(_$_NewsFilterReactiveModel _value,
      $Res Function(_$_NewsFilterReactiveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? countries = freezed,
    Object? sources = freezed,
    Object? languages = freezed,
    Object? categories = freezed,
    Object? sort = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_NewsFilterReactiveModel(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateGroup?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as CountriesGroup?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as SourcesGroup?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as LanguagesGroup?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesGroup?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEnum,
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
class _$_NewsFilterReactiveModel extends _NewsFilterReactiveModel {
  const _$_NewsFilterReactiveModel(
      {this.date,
      this.countries,
      this.sources,
      this.languages,
      this.categories,
      @FormControlAnnotation()
          this.sort = SortEnum.publishedDesc,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          this.limit = 25,
      @FormControlAnnotation()
          this.offset = 0})
      : super._();

  factory _$_NewsFilterReactiveModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsFilterReactiveModelFromJson(json);

  @override
  final DateGroup? date;
  @override
  final CountriesGroup? countries;
  @override
  final SourcesGroup? sources;
  @override
  final LanguagesGroup? languages;
  @override
  final CategoriesGroup? categories;
  @override
  @JsonKey()
  @FormControlAnnotation()
  final SortEnum sort;
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
    return 'NewsFilterReactiveModel(date: $date, countries: $countries, sources: $sources, languages: $languages, categories: $categories, sort: $sort, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsFilterReactiveModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.countries, countries) ||
                other.countries == countries) &&
            (identical(other.sources, sources) || other.sources == sources) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, countries, sources,
      languages, categories, sort, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsFilterReactiveModelCopyWith<_$_NewsFilterReactiveModel>
      get copyWith =>
          __$$_NewsFilterReactiveModelCopyWithImpl<_$_NewsFilterReactiveModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsFilterReactiveModelToJson(
      this,
    );
  }
}

abstract class _NewsFilterReactiveModel extends NewsFilterReactiveModel {
  const factory _NewsFilterReactiveModel(
      {final DateGroup? date,
      final CountriesGroup? countries,
      final SourcesGroup? sources,
      final LanguagesGroup? languages,
      final CategoriesGroup? categories,
      @FormControlAnnotation()
          final SortEnum sort,
      @FormControlAnnotation(validators: [max100Validator, min1Validator])
          final int limit,
      @FormControlAnnotation()
          final int offset}) = _$_NewsFilterReactiveModel;
  const _NewsFilterReactiveModel._() : super._();

  factory _NewsFilterReactiveModel.fromJson(Map<String, dynamic> json) =
      _$_NewsFilterReactiveModel.fromJson;

  @override
  DateGroup? get date;
  @override
  CountriesGroup? get countries;
  @override
  SourcesGroup? get sources;
  @override
  LanguagesGroup? get languages;
  @override
  CategoriesGroup? get categories;
  @override
  @FormControlAnnotation()
  SortEnum get sort;
  @override
  @FormControlAnnotation(validators: [max100Validator, min1Validator])
  int get limit;
  @override
  @FormControlAnnotation()
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_NewsFilterReactiveModelCopyWith<_$_NewsFilterReactiveModel>
      get copyWith => throw _privateConstructorUsedError;
}

DateGroup _$DateGroupFromJson(Map<String, dynamic> json) {
  return _DateGroup.fromJson(json);
}

/// @nodoc
mixin _$DateGroup {
  @FormControlAnnotation()
  DateTime? get dateIn => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  DateTime? get dateOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateGroupCopyWith<DateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateGroupCopyWith<$Res> {
  factory $DateGroupCopyWith(DateGroup value, $Res Function(DateGroup) then) =
      _$DateGroupCopyWithImpl<$Res, DateGroup>;
  @useResult
  $Res call(
      {@FormControlAnnotation() DateTime? dateIn,
      @FormControlAnnotation() DateTime? dateOut});
}

/// @nodoc
class _$DateGroupCopyWithImpl<$Res, $Val extends DateGroup>
    implements $DateGroupCopyWith<$Res> {
  _$DateGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateIn = freezed,
    Object? dateOut = freezed,
  }) {
    return _then(_value.copyWith(
      dateIn: freezed == dateIn
          ? _value.dateIn
          : dateIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOut: freezed == dateOut
          ? _value.dateOut
          : dateOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateGroupCopyWith<$Res> implements $DateGroupCopyWith<$Res> {
  factory _$$_DateGroupCopyWith(
          _$_DateGroup value, $Res Function(_$_DateGroup) then) =
      __$$_DateGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation() DateTime? dateIn,
      @FormControlAnnotation() DateTime? dateOut});
}

/// @nodoc
class __$$_DateGroupCopyWithImpl<$Res>
    extends _$DateGroupCopyWithImpl<$Res, _$_DateGroup>
    implements _$$_DateGroupCopyWith<$Res> {
  __$$_DateGroupCopyWithImpl(
      _$_DateGroup _value, $Res Function(_$_DateGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateIn = freezed,
    Object? dateOut = freezed,
  }) {
    return _then(_$_DateGroup(
      dateIn: freezed == dateIn
          ? _value.dateIn
          : dateIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOut: freezed == dateOut
          ? _value.dateOut
          : dateOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateGroup extends _DateGroup {
  const _$_DateGroup(
      {@FormControlAnnotation() this.dateIn,
      @FormControlAnnotation() this.dateOut})
      : super._();

  factory _$_DateGroup.fromJson(Map<String, dynamic> json) =>
      _$$_DateGroupFromJson(json);

  @override
  @FormControlAnnotation()
  final DateTime? dateIn;
  @override
  @FormControlAnnotation()
  final DateTime? dateOut;

  @override
  String toString() {
    return 'DateGroup(dateIn: $dateIn, dateOut: $dateOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateGroup &&
            (identical(other.dateIn, dateIn) || other.dateIn == dateIn) &&
            (identical(other.dateOut, dateOut) || other.dateOut == dateOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateIn, dateOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateGroupCopyWith<_$_DateGroup> get copyWith =>
      __$$_DateGroupCopyWithImpl<_$_DateGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateGroupToJson(
      this,
    );
  }
}

abstract class _DateGroup extends DateGroup {
  const factory _DateGroup(
      {@FormControlAnnotation() final DateTime? dateIn,
      @FormControlAnnotation() final DateTime? dateOut}) = _$_DateGroup;
  const _DateGroup._() : super._();

  factory _DateGroup.fromJson(Map<String, dynamic> json) =
      _$_DateGroup.fromJson;

  @override
  @FormControlAnnotation()
  DateTime? get dateIn;
  @override
  @FormControlAnnotation()
  DateTime? get dateOut;
  @override
  @JsonKey(ignore: true)
  _$$_DateGroupCopyWith<_$_DateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

SourcesGroup _$SourcesGroupFromJson(Map<String, dynamic> json) {
  return _SourcesGroup.fromJson(json);
}

/// @nodoc
mixin _$SourcesGroup {
  @FormArrayAnnotation()
  List<Source> get dateIn => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<Source> get dateOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcesGroupCopyWith<SourcesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesGroupCopyWith<$Res> {
  factory $SourcesGroupCopyWith(
          SourcesGroup value, $Res Function(SourcesGroup) then) =
      _$SourcesGroupCopyWithImpl<$Res, SourcesGroup>;
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<Source> dateIn,
      @FormArrayAnnotation() List<Source> dateOut});
}

/// @nodoc
class _$SourcesGroupCopyWithImpl<$Res, $Val extends SourcesGroup>
    implements $SourcesGroupCopyWith<$Res> {
  _$SourcesGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateIn = null,
    Object? dateOut = null,
  }) {
    return _then(_value.copyWith(
      dateIn: null == dateIn
          ? _value.dateIn
          : dateIn // ignore: cast_nullable_to_non_nullable
              as List<Source>,
      dateOut: null == dateOut
          ? _value.dateOut
          : dateOut // ignore: cast_nullable_to_non_nullable
              as List<Source>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourcesGroupCopyWith<$Res>
    implements $SourcesGroupCopyWith<$Res> {
  factory _$$_SourcesGroupCopyWith(
          _$_SourcesGroup value, $Res Function(_$_SourcesGroup) then) =
      __$$_SourcesGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<Source> dateIn,
      @FormArrayAnnotation() List<Source> dateOut});
}

/// @nodoc
class __$$_SourcesGroupCopyWithImpl<$Res>
    extends _$SourcesGroupCopyWithImpl<$Res, _$_SourcesGroup>
    implements _$$_SourcesGroupCopyWith<$Res> {
  __$$_SourcesGroupCopyWithImpl(
      _$_SourcesGroup _value, $Res Function(_$_SourcesGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateIn = null,
    Object? dateOut = null,
  }) {
    return _then(_$_SourcesGroup(
      dateIn: null == dateIn
          ? _value._dateIn
          : dateIn // ignore: cast_nullable_to_non_nullable
              as List<Source>,
      dateOut: null == dateOut
          ? _value._dateOut
          : dateOut // ignore: cast_nullable_to_non_nullable
              as List<Source>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourcesGroup extends _SourcesGroup {
  const _$_SourcesGroup(
      {@FormArrayAnnotation() final List<Source> dateIn = const [],
      @FormArrayAnnotation() final List<Source> dateOut = const []})
      : _dateIn = dateIn,
        _dateOut = dateOut,
        super._();

  factory _$_SourcesGroup.fromJson(Map<String, dynamic> json) =>
      _$$_SourcesGroupFromJson(json);

  final List<Source> _dateIn;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<Source> get dateIn {
    if (_dateIn is EqualUnmodifiableListView) return _dateIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateIn);
  }

  final List<Source> _dateOut;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<Source> get dateOut {
    if (_dateOut is EqualUnmodifiableListView) return _dateOut;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateOut);
  }

  @override
  String toString() {
    return 'SourcesGroup(dateIn: $dateIn, dateOut: $dateOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourcesGroup &&
            const DeepCollectionEquality().equals(other._dateIn, _dateIn) &&
            const DeepCollectionEquality().equals(other._dateOut, _dateOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dateIn),
      const DeepCollectionEquality().hash(_dateOut));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourcesGroupCopyWith<_$_SourcesGroup> get copyWith =>
      __$$_SourcesGroupCopyWithImpl<_$_SourcesGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourcesGroupToJson(
      this,
    );
  }
}

abstract class _SourcesGroup extends SourcesGroup {
  const factory _SourcesGroup(
      {@FormArrayAnnotation() final List<Source> dateIn,
      @FormArrayAnnotation() final List<Source> dateOut}) = _$_SourcesGroup;
  const _SourcesGroup._() : super._();

  factory _SourcesGroup.fromJson(Map<String, dynamic> json) =
      _$_SourcesGroup.fromJson;

  @override
  @FormArrayAnnotation()
  List<Source> get dateIn;
  @override
  @FormArrayAnnotation()
  List<Source> get dateOut;
  @override
  @JsonKey(ignore: true)
  _$$_SourcesGroupCopyWith<_$_SourcesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

CountriesGroup _$CountriesGroupFromJson(Map<String, dynamic> json) {
  return _CountriesGroup.fromJson(json);
}

/// @nodoc
mixin _$CountriesGroup {
  @FormArrayAnnotation()
  List<Country> get countryIn => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<Country> get countryOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesGroupCopyWith<CountriesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesGroupCopyWith<$Res> {
  factory $CountriesGroupCopyWith(
          CountriesGroup value, $Res Function(CountriesGroup) then) =
      _$CountriesGroupCopyWithImpl<$Res, CountriesGroup>;
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<Country> countryIn,
      @FormArrayAnnotation() List<Country> countryOut});
}

/// @nodoc
class _$CountriesGroupCopyWithImpl<$Res, $Val extends CountriesGroup>
    implements $CountriesGroupCopyWith<$Res> {
  _$CountriesGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryIn = null,
    Object? countryOut = null,
  }) {
    return _then(_value.copyWith(
      countryIn: null == countryIn
          ? _value.countryIn
          : countryIn // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      countryOut: null == countryOut
          ? _value.countryOut
          : countryOut // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountriesGroupCopyWith<$Res>
    implements $CountriesGroupCopyWith<$Res> {
  factory _$$_CountriesGroupCopyWith(
          _$_CountriesGroup value, $Res Function(_$_CountriesGroup) then) =
      __$$_CountriesGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<Country> countryIn,
      @FormArrayAnnotation() List<Country> countryOut});
}

/// @nodoc
class __$$_CountriesGroupCopyWithImpl<$Res>
    extends _$CountriesGroupCopyWithImpl<$Res, _$_CountriesGroup>
    implements _$$_CountriesGroupCopyWith<$Res> {
  __$$_CountriesGroupCopyWithImpl(
      _$_CountriesGroup _value, $Res Function(_$_CountriesGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryIn = null,
    Object? countryOut = null,
  }) {
    return _then(_$_CountriesGroup(
      countryIn: null == countryIn
          ? _value._countryIn
          : countryIn // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      countryOut: null == countryOut
          ? _value._countryOut
          : countryOut // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountriesGroup extends _CountriesGroup {
  const _$_CountriesGroup(
      {@FormArrayAnnotation() final List<Country> countryIn = const [],
      @FormArrayAnnotation() final List<Country> countryOut = const []})
      : _countryIn = countryIn,
        _countryOut = countryOut,
        super._();

  factory _$_CountriesGroup.fromJson(Map<String, dynamic> json) =>
      _$$_CountriesGroupFromJson(json);

  final List<Country> _countryIn;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<Country> get countryIn {
    if (_countryIn is EqualUnmodifiableListView) return _countryIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryIn);
  }

  final List<Country> _countryOut;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<Country> get countryOut {
    if (_countryOut is EqualUnmodifiableListView) return _countryOut;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryOut);
  }

  @override
  String toString() {
    return 'CountriesGroup(countryIn: $countryIn, countryOut: $countryOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountriesGroup &&
            const DeepCollectionEquality()
                .equals(other._countryIn, _countryIn) &&
            const DeepCollectionEquality()
                .equals(other._countryOut, _countryOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countryIn),
      const DeepCollectionEquality().hash(_countryOut));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountriesGroupCopyWith<_$_CountriesGroup> get copyWith =>
      __$$_CountriesGroupCopyWithImpl<_$_CountriesGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountriesGroupToJson(
      this,
    );
  }
}

abstract class _CountriesGroup extends CountriesGroup {
  const factory _CountriesGroup(
          {@FormArrayAnnotation() final List<Country> countryIn,
          @FormArrayAnnotation() final List<Country> countryOut}) =
      _$_CountriesGroup;
  const _CountriesGroup._() : super._();

  factory _CountriesGroup.fromJson(Map<String, dynamic> json) =
      _$_CountriesGroup.fromJson;

  @override
  @FormArrayAnnotation()
  List<Country> get countryIn;
  @override
  @FormArrayAnnotation()
  List<Country> get countryOut;
  @override
  @JsonKey(ignore: true)
  _$$_CountriesGroupCopyWith<_$_CountriesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguagesGroup _$LanguagesGroupFromJson(Map<String, dynamic> json) {
  return _LanguagesGroup.fromJson(json);
}

/// @nodoc
mixin _$LanguagesGroup {
  @FormArrayAnnotation()
  List<LanguagesEnum> get languagesIn => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<LanguagesEnum> get languagesOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagesGroupCopyWith<LanguagesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesGroupCopyWith<$Res> {
  factory $LanguagesGroupCopyWith(
          LanguagesGroup value, $Res Function(LanguagesGroup) then) =
      _$LanguagesGroupCopyWithImpl<$Res, LanguagesGroup>;
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<LanguagesEnum> languagesIn,
      @FormArrayAnnotation() List<LanguagesEnum> languagesOut});
}

/// @nodoc
class _$LanguagesGroupCopyWithImpl<$Res, $Val extends LanguagesGroup>
    implements $LanguagesGroupCopyWith<$Res> {
  _$LanguagesGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languagesIn = null,
    Object? languagesOut = null,
  }) {
    return _then(_value.copyWith(
      languagesIn: null == languagesIn
          ? _value.languagesIn
          : languagesIn // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
      languagesOut: null == languagesOut
          ? _value.languagesOut
          : languagesOut // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguagesGroupCopyWith<$Res>
    implements $LanguagesGroupCopyWith<$Res> {
  factory _$$_LanguagesGroupCopyWith(
          _$_LanguagesGroup value, $Res Function(_$_LanguagesGroup) then) =
      __$$_LanguagesGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<LanguagesEnum> languagesIn,
      @FormArrayAnnotation() List<LanguagesEnum> languagesOut});
}

/// @nodoc
class __$$_LanguagesGroupCopyWithImpl<$Res>
    extends _$LanguagesGroupCopyWithImpl<$Res, _$_LanguagesGroup>
    implements _$$_LanguagesGroupCopyWith<$Res> {
  __$$_LanguagesGroupCopyWithImpl(
      _$_LanguagesGroup _value, $Res Function(_$_LanguagesGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languagesIn = null,
    Object? languagesOut = null,
  }) {
    return _then(_$_LanguagesGroup(
      languagesIn: null == languagesIn
          ? _value._languagesIn
          : languagesIn // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
      languagesOut: null == languagesOut
          ? _value._languagesOut
          : languagesOut // ignore: cast_nullable_to_non_nullable
              as List<LanguagesEnum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguagesGroup extends _LanguagesGroup {
  const _$_LanguagesGroup(
      {@FormArrayAnnotation() final List<LanguagesEnum> languagesIn = const [],
      @FormArrayAnnotation() final List<LanguagesEnum> languagesOut = const []})
      : _languagesIn = languagesIn,
        _languagesOut = languagesOut,
        super._();

  factory _$_LanguagesGroup.fromJson(Map<String, dynamic> json) =>
      _$$_LanguagesGroupFromJson(json);

  final List<LanguagesEnum> _languagesIn;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<LanguagesEnum> get languagesIn {
    if (_languagesIn is EqualUnmodifiableListView) return _languagesIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languagesIn);
  }

  final List<LanguagesEnum> _languagesOut;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<LanguagesEnum> get languagesOut {
    if (_languagesOut is EqualUnmodifiableListView) return _languagesOut;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languagesOut);
  }

  @override
  String toString() {
    return 'LanguagesGroup(languagesIn: $languagesIn, languagesOut: $languagesOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguagesGroup &&
            const DeepCollectionEquality()
                .equals(other._languagesIn, _languagesIn) &&
            const DeepCollectionEquality()
                .equals(other._languagesOut, _languagesOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_languagesIn),
      const DeepCollectionEquality().hash(_languagesOut));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguagesGroupCopyWith<_$_LanguagesGroup> get copyWith =>
      __$$_LanguagesGroupCopyWithImpl<_$_LanguagesGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguagesGroupToJson(
      this,
    );
  }
}

abstract class _LanguagesGroup extends LanguagesGroup {
  const factory _LanguagesGroup(
          {@FormArrayAnnotation() final List<LanguagesEnum> languagesIn,
          @FormArrayAnnotation() final List<LanguagesEnum> languagesOut}) =
      _$_LanguagesGroup;
  const _LanguagesGroup._() : super._();

  factory _LanguagesGroup.fromJson(Map<String, dynamic> json) =
      _$_LanguagesGroup.fromJson;

  @override
  @FormArrayAnnotation()
  List<LanguagesEnum> get languagesIn;
  @override
  @FormArrayAnnotation()
  List<LanguagesEnum> get languagesOut;
  @override
  @JsonKey(ignore: true)
  _$$_LanguagesGroupCopyWith<_$_LanguagesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesGroup _$CategoriesGroupFromJson(Map<String, dynamic> json) {
  return _CategoriesGroup.fromJson(json);
}

/// @nodoc
mixin _$CategoriesGroup {
  @FormArrayAnnotation()
  List<CategoriesEnum> get categoriesIn => throw _privateConstructorUsedError;
  @FormArrayAnnotation()
  List<CategoriesEnum> get categoriesOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesGroupCopyWith<CategoriesGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesGroupCopyWith<$Res> {
  factory $CategoriesGroupCopyWith(
          CategoriesGroup value, $Res Function(CategoriesGroup) then) =
      _$CategoriesGroupCopyWithImpl<$Res, CategoriesGroup>;
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<CategoriesEnum> categoriesIn,
      @FormArrayAnnotation() List<CategoriesEnum> categoriesOut});
}

/// @nodoc
class _$CategoriesGroupCopyWithImpl<$Res, $Val extends CategoriesGroup>
    implements $CategoriesGroupCopyWith<$Res> {
  _$CategoriesGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesIn = null,
    Object? categoriesOut = null,
  }) {
    return _then(_value.copyWith(
      categoriesIn: null == categoriesIn
          ? _value.categoriesIn
          : categoriesIn // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      categoriesOut: null == categoriesOut
          ? _value.categoriesOut
          : categoriesOut // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesGroupCopyWith<$Res>
    implements $CategoriesGroupCopyWith<$Res> {
  factory _$$_CategoriesGroupCopyWith(
          _$_CategoriesGroup value, $Res Function(_$_CategoriesGroup) then) =
      __$$_CategoriesGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormArrayAnnotation() List<CategoriesEnum> categoriesIn,
      @FormArrayAnnotation() List<CategoriesEnum> categoriesOut});
}

/// @nodoc
class __$$_CategoriesGroupCopyWithImpl<$Res>
    extends _$CategoriesGroupCopyWithImpl<$Res, _$_CategoriesGroup>
    implements _$$_CategoriesGroupCopyWith<$Res> {
  __$$_CategoriesGroupCopyWithImpl(
      _$_CategoriesGroup _value, $Res Function(_$_CategoriesGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesIn = null,
    Object? categoriesOut = null,
  }) {
    return _then(_$_CategoriesGroup(
      categoriesIn: null == categoriesIn
          ? _value._categoriesIn
          : categoriesIn // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
      categoriesOut: null == categoriesOut
          ? _value._categoriesOut
          : categoriesOut // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEnum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesGroup extends _CategoriesGroup {
  const _$_CategoriesGroup(
      {@FormArrayAnnotation()
          final List<CategoriesEnum> categoriesIn = const [],
      @FormArrayAnnotation()
          final List<CategoriesEnum> categoriesOut = const []})
      : _categoriesIn = categoriesIn,
        _categoriesOut = categoriesOut,
        super._();

  factory _$_CategoriesGroup.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesGroupFromJson(json);

  final List<CategoriesEnum> _categoriesIn;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<CategoriesEnum> get categoriesIn {
    if (_categoriesIn is EqualUnmodifiableListView) return _categoriesIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesIn);
  }

  final List<CategoriesEnum> _categoriesOut;
  @override
  @JsonKey()
  @FormArrayAnnotation()
  List<CategoriesEnum> get categoriesOut {
    if (_categoriesOut is EqualUnmodifiableListView) return _categoriesOut;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesOut);
  }

  @override
  String toString() {
    return 'CategoriesGroup(categoriesIn: $categoriesIn, categoriesOut: $categoriesOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesGroup &&
            const DeepCollectionEquality()
                .equals(other._categoriesIn, _categoriesIn) &&
            const DeepCollectionEquality()
                .equals(other._categoriesOut, _categoriesOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoriesIn),
      const DeepCollectionEquality().hash(_categoriesOut));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesGroupCopyWith<_$_CategoriesGroup> get copyWith =>
      __$$_CategoriesGroupCopyWithImpl<_$_CategoriesGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesGroupToJson(
      this,
    );
  }
}

abstract class _CategoriesGroup extends CategoriesGroup {
  const factory _CategoriesGroup(
          {@FormArrayAnnotation() final List<CategoriesEnum> categoriesIn,
          @FormArrayAnnotation() final List<CategoriesEnum> categoriesOut}) =
      _$_CategoriesGroup;
  const _CategoriesGroup._() : super._();

  factory _CategoriesGroup.fromJson(Map<String, dynamic> json) =
      _$_CategoriesGroup.fromJson;

  @override
  @FormArrayAnnotation()
  List<CategoriesEnum> get categoriesIn;
  @override
  @FormArrayAnnotation()
  List<CategoriesEnum> get categoriesOut;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesGroupCopyWith<_$_CategoriesGroup> get copyWith =>
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

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({String name, String code, String url});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String code, String url});
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$_Country>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? url = null,
  }) {
    return _then(_$_Country(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country extends _Country {
  const _$_Country({required this.name, required this.code, required this.url})
      : super._();

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final String url;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Country &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(
      this,
    );
  }
}

abstract class _Country extends Country {
  const factory _Country(
      {required final String name,
      required final String code,
      required final String url}) = _$_Country;
  const _Country._() : super._();

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
