import 'package:flutter/material.dart';
import 'package:informate/data/extensions/string_extensions.dart';
import 'package:json_annotation/json_annotation.dart';

enum CategoriesEnum {
  @JsonValue('')
  all('all', Icons.apps),
  @JsonValue('general')
  general('general', Icons.all_inclusive),
  @JsonValue('business')
  business('business', Icons.business),
  @JsonValue('entertainment')
  entertainment('entertainment', Icons.movie),
  @JsonValue('health')
  health('health', Icons.health_and_safety),
  @JsonValue('science')
  science('science', Icons.science),
  @JsonValue('sports')
  sports('sports', Icons.sports),
  @JsonValue('technology')
  technology('technology', Icons.science),
  ;

  const CategoriesEnum(this.value, this.iconData);
  final String value;
  final IconData iconData;

  bool get isAll => this == CategoriesEnum.all;

  static List<CategoriesEnum> list() => [
        CategoriesEnum.general,
        CategoriesEnum.business,
        CategoriesEnum.entertainment,
        CategoriesEnum.health,
        CategoriesEnum.science,
        CategoriesEnum.sports,
        CategoriesEnum.technology,
      ];

  @override
  String toString() => name.capitalizeFirstLetter();
}
