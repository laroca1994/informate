// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_response_model.g.dart';
part 'basic_response_model.freezed.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    ErrorData? error,
  }) = _ErrorModel;

  const ErrorModel._();

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}

@freezed
class ErrorData with _$ErrorData {
  const factory ErrorData({
    String? code,
    String? message,
    ErrorContext? context,
  }) = _ErrorData;

  const ErrorData._();

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}

@freezed
class ErrorContext with _$ErrorContext {
  const factory ErrorContext({
    List<String>? date,
  }) = _ErrorContext;

  const ErrorContext._();

  factory ErrorContext.fromJson(Map<String, dynamic> json) =>
      _$ErrorContextFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class BasicResponse<T>{
   final Pagination pagination;
   final List<T> data;

   BasicResponse({
    required this.pagination,
    required this.data,
  });

  factory BasicResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BasicResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BasicResponseToJson(this, toJsonT);
}

@freezed
class Pagination  with _$Pagination {

 const factory Pagination({
    required int limit,
    required int offset,
    required int count,
    required int total,
  }) = _Pagination;

  const Pagination._();

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class Article  with _$Article {

const factory Article({
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? source,
    required String? image,
    required String? category,
    required String? language,
    required String? country,
   @JsonKey(name: 'published_at') required DateTime? publishedAt,
  }) = _Article;

  const Article._();

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    String? code,
    String? name,
    String? category,
    String? country,
    String? language,
    String? url,
  }) = _Source;

  const Source._();

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
