import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/enums/languages_enum.dart';
import 'package:informate/data/enums/sort_enum.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/data/utils/validators.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'filter_model.g.dart';
part 'filter_model.freezed.dart';
part 'filter_model.gform.dart';

@freezed
@ReactiveFormAnnotation()
abstract class SourcesFilterModel with _$SourcesFilterModel {
  const factory SourcesFilterModel({
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('') String search,
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
@ReactiveFormAnnotation()
abstract class NewsFilterModel with _$NewsFilterModel {
  const factory NewsFilterModel({
    @FormControlAnnotation()
    @Default('') String keywords,
    @FormArrayAnnotation()
    @Default([]) List<DateTime> date,
    @FormControlAnnotation()
    @Default(SortEnum.publishedDesc) SortEnum sort,
    @FormArrayAnnotation() @Default([]) List<String> countries,
    @FormArrayAnnotation() @Default([]) List<Source> sources,
    @FormArrayAnnotation() @Default([]) List<LanguagesEnum> languages,
    @FormArrayAnnotation() @Default([]) List<CategoriesEnum> categories,
    @FormControlAnnotation(validators: [max100Validator, min1Validator])
    @Default(25)
    int limit,
    @FormControlAnnotation() @Default(0) int offset,
  }) = _NewsFilterModel;
  const NewsFilterModel._();

  factory NewsFilterModel.fromJson(Map<String, dynamic> json) =>
      _$NewsFilterModelFromJson(json);
}
