import 'package:json_annotation/json_annotation.dart';

enum SortEnum {
  @JsonValue('published_desc')
  publishedDesc,
  @JsonValue('published_asc')
  publishedAsc,
  @JsonValue('popularity')
  popularity,
}
