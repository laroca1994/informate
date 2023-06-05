import 'package:json_annotation/json_annotation.dart';

part 'basic_response_model.g.dart';

class BasicResponse {
  final ErrorModel? error;
  final Pagination? pagination;
  final Article? data;

  BasicResponse({
    this.error,
    this.pagination,
    this.data,
  });
}

@JsonSerializable()
class ErrorModel {
  ErrorModel({
    this.error,
  });

  ErrorData? error;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}

@JsonSerializable()
class ErrorData {
  ErrorData({
    this.code,
    this.message,
    this.context,
  });

  String? code;
  String? message;
  ErrorContext? context;

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorDataToJson(this);
}

@JsonSerializable()
class ErrorContext {
  ErrorContext({
    this.date,
  });

  List<String>? date;

  factory ErrorContext.fromJson(Map<String, dynamic> json) =>
      _$ErrorContextFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorContextToJson(this);
}

@JsonSerializable()
class Pagination {
  @JsonKey(name: 'limit')
  int limit;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'total')
  int total;

  Pagination({
    required this.limit,
    required this.offset,
    required this.count,
    required this.total,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class Article {
  @JsonKey(name: 'author')
  String author;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'category')
  String category;

  @JsonKey(name: 'language')
  String language;

  @JsonKey(name: 'country')
  String country;

  @JsonKey(name: 'published_at')
  String publishedAt;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.source,
    required this.image,
    required this.category,
    required this.language,
    required this.country,
    required this.publishedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
