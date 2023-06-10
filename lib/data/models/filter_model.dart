import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/parser.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/enums/languages_enum.dart';
import 'package:informate/data/enums/sort_enum.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/data/utils/methods.dart';
import 'package:informate/data/utils/validators.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'filter_model.g.dart';
part 'filter_model.freezed.dart';
part 'filter_model.gform.dart';

@freezed
class NewsFilterModel with _$NewsFilterModel {
  const factory NewsFilterModel({
    @Default('') String keywords,
    @Default([]) List<DateTime> date,
    @Default(SortEnum.publishedDesc) SortEnum sort,
    @Default([]) List<String> countries,
    @Default([]) List<CategoriesEnum> categories,
    @Default([]) List<Source> sources,
    @Default([]) List<LanguagesEnum> languages,
    @Default(25) int limit,
    @Default(0) int offset,
  }) = _NewsFilterModel;
  const NewsFilterModel._();

  factory NewsFilterModel.fromJson(Map<String, dynamic> json) =>
      _$NewsFilterModelFromJson(json);
}

@freezed
@ReactiveFormAnnotation()
class NewsFilterReactiveModel with _$NewsFilterReactiveModel {
  const factory NewsFilterReactiveModel({
    DateGroup? date,
    CountriesGroup? countries,
    SourcesGroup? sources,
    LanguagesGroup? languages,
    CategoriesGroup? categories,
    @FormControlAnnotation() @Default(SortEnum.publishedDesc) SortEnum sort,
    @FormControlAnnotation(validators: [max100Validator, min1Validator])
    @Default(25)
    int limit,
    @FormControlAnnotation() @Default(0) int offset,
  }) = _NewsFilterReactiveModel;
  const NewsFilterReactiveModel._();

  factory NewsFilterReactiveModel.fromJson(Map<String, dynamic> json) =>
      _$NewsFilterReactiveModelFromJson(json);
}

@freezed
@FormGroupAnnotation<DateGroup>(validators: [correctDateValidator])
class DateGroup with _$DateGroup {
  const factory DateGroup({
    @FormControlAnnotation() DateTime? dateIn,
    @FormControlAnnotation() DateTime? dateOut,
  }) = _DateGroup;
  const DateGroup._();

  factory DateGroup.fromJson(Map<String, dynamic> json) =>
      _$DateGroupFromJson(json);
}

@freezed
@FormGroupAnnotation<SourcesGroup>(validators: [correctListValidator])
class SourcesGroup with _$SourcesGroup {
  const factory SourcesGroup({
    @FormArrayAnnotation() @Default([]) List<Source> dateIn,
    @FormArrayAnnotation() @Default([]) List<Source> dateOut,
  }) = _SourcesGroup;
  const SourcesGroup._();

  factory SourcesGroup.fromJson(Map<String, dynamic> json) =>
      _$SourcesGroupFromJson(json);
}

@freezed
@FormGroupAnnotation<CountriesGroup>(validators: [correctListValidator])
class CountriesGroup with _$CountriesGroup {
  const factory CountriesGroup({
    @FormArrayAnnotation() @Default([]) List<Country> countryIn,
    @FormArrayAnnotation() @Default([]) List<Country> countryOut,
  }) = _CountriesGroup;
  const CountriesGroup._();

  factory CountriesGroup.fromJson(Map<String, dynamic> json) =>
      _$CountriesGroupFromJson(json);
}

@freezed
@FormGroupAnnotation<LanguagesGroup>(validators: [correctListValidator])
class LanguagesGroup with _$LanguagesGroup {
  const factory LanguagesGroup({
    @FormArrayAnnotation() @Default([]) List<LanguagesEnum> languagesIn,
    @FormArrayAnnotation() @Default([]) List<LanguagesEnum> languagesOut,
  }) = _LanguagesGroup;
  const LanguagesGroup._();

  factory LanguagesGroup.fromJson(Map<String, dynamic> json) =>
      _$LanguagesGroupFromJson(json);
}

@freezed
@FormGroupAnnotation<CategoriesGroup>(validators: [correctListValidator])
class CategoriesGroup with _$CategoriesGroup {
  const factory CategoriesGroup({
    @FormArrayAnnotation() @Default([]) List<CategoriesEnum> categoriesIn,
    @FormArrayAnnotation() @Default([]) List<CategoriesEnum> categoriesOut,
  }) = _CategoriesGroup;
  const CategoriesGroup._();

  factory CategoriesGroup.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGroupFromJson(json);
}

@freezed
@ReactiveFormAnnotation()
class SourcesFilterModel with _$SourcesFilterModel {
  const factory SourcesFilterModel({
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
    String search,
    @FormArrayAnnotation() @Default([]) List<String> countries,
    @FormArrayAnnotation() @Default([]) List<LanguagesEnum> languages,
    @FormArrayAnnotation() @Default([]) List<CategoriesEnum> categories,
    @FormControlAnnotation(validators: [max100Validator, min1Validator])
    @Default(25)
    int limit,
    @FormControlAnnotation() @Default(0) int offset,
  }) = _SourcesFilterModel;
  const SourcesFilterModel._();

  factory SourcesFilterModel.fromJson(Map<String, dynamic> json) =>
      _$SourcesFilterModelFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String code,
    required String url,
  }) = _Country;
  const Country._();

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  String toString() => name;
}

class Countries {
  List<Country> countries = [];

  Future<void> loadFromHtml() async {
    final hijosEnlaces = await getCountries();

    for (var elemento in hijosEnlaces) {
      final name = elemento.text.trim();
      final code = elemento.children.first.attributes['class']!.split(' ').last;
      final url = '$flagsUrl$code.svg';
      countries.add(Country(
        name: name,
        code: code,
        url: url,
      ));
    }
  }
}
