// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicResponse<T> _$BasicResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BasicResponse<T>(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$BasicResponseToJson<T>(
  BasicResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data.map(toJsonT).toList(),
    };

_$_ErrorResponse _$$_ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponse(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };

_$_ErrorModel _$$_ErrorModelFromJson(Map<String, dynamic> json) =>
    _$_ErrorModel(
      error: json['error'] == null
          ? null
          : ErrorData.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorModelToJson(_$_ErrorModel instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_ErrorData _$$_ErrorDataFromJson(Map<String, dynamic> json) => _$_ErrorData(
      code: json['code'] as String?,
      message: json['message'] as String?,
      context: json['context'] == null
          ? null
          : ErrorContext.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorDataToJson(_$_ErrorData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'context': instance.context,
    };

_$_ErrorContext _$$_ErrorContextFromJson(Map<String, dynamic> json) =>
    _$_ErrorContext(
      date: (json['date'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ErrorContextToJson(_$_ErrorContext instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      limit: json['limit'] as int,
      offset: json['offset'] as int,
      count: json['count'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'count': instance.count,
      'total': instance.total,
    };

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      source: json['source'] as String?,
      image: json['image'] as String?,
      category: json['category'] as String?,
      language: json['language'] as String?,
      country: json['country'] as String?,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'source': instance.source,
      'image': instance.image,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
      'published_at': instance.publishedAt?.toIso8601String(),
    };

_$_Source _$$_SourceFromJson(Map<String, dynamic> json) => _$_Source(
      code: json['code'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      country: json['country'] as String?,
      language: json['language'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'category': instance.category,
      'country': instance.country,
      'language': instance.language,
      'url': instance.url,
    };
