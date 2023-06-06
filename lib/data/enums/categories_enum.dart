import 'package:json_annotation/json_annotation.dart';

enum CategoriesEnum {
  @JsonValue('general')
  general,
  @JsonValue('business')
  business,
  @JsonValue('entertainment')
  entertainment,
  @JsonValue('health')
  health,
  @JsonValue('science')
  science,
  @JsonValue('sports')
  sports,
  @JsonValue('technology')
  technology,
}
