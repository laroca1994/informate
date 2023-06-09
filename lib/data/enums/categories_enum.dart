import 'package:json_annotation/json_annotation.dart';

enum CategoriesEnum {
  @JsonValue('')
  all('all'),
  @JsonValue('general')
  general('general'),
  @JsonValue('business')
  business('business'),
  @JsonValue('entertainment')
  entertainment('entertainment'),
  @JsonValue('health')
  health('health'),
  @JsonValue('science')
  science('science'),
  @JsonValue('sports')
  sports('sports'),
  @JsonValue('technology')
  technology('technology'),
  ;

  const CategoriesEnum(this.value);
  final String value;

  bool get isAll => this == CategoriesEnum.all;
}
