import 'package:json_annotation/json_annotation.dart';

enum SortEnum {
  @JsonValue('published_desc')
  publishedDesc('published_desc'),
  @JsonValue('published_asc')
  publishedAsc('published_asc'),
  @JsonValue('popularity')
  popularity('popularity');

  const SortEnum(this.value);
  final String value;
}
