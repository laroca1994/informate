import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText(
    this.title, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.overflow,
  });

  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        overflow: overflow,
      ),
    );
  }
}
