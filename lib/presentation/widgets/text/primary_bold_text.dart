import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/presentation/widgets/text/primary_text.dart';

class PrimaryBoldText extends StatelessWidget {
  const PrimaryBoldText(
    this.title, {
    super.key,
    this.fontSize = fontSizeDefault,
    this.maxLines,
    this.overflow,
  });

  final String title;
  final double? fontSize;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return PrimaryText(
      title,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
