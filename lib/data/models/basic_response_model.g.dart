// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      error: json['error'] == null
          ? null
          : ErrorData.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) => ErrorData(
      code: json['code'] as String?,
      message: json['message'] as String?,
      context: json['context'] == null
          ? null
          : ErrorContext.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorDataToJson(ErrorData instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'context': instance.context,
    };

ErrorContext _$ErrorContextFromJson(Map<String, dynamic> json) => ErrorContext(
      date: (json['date'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ErrorContextToJson(ErrorContext instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      limit: json['limit'] as int,
      offset: json['offset'] as int,
      count: json['count'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'count': instance.count,
      'total': instance.total,
    };

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      source: json['source'] as String,
      image: json['image'] as String,
      category: json['category'] as String,
      language: json['language'] as String,
      country: json['country'] as String,
      publishedAt: json['published_at'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'source': instance.source,
      'image': instance.image,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
      'published_at': instance.publishedAt,
    };