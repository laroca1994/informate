import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/presentation/widgets/text/primary_bold_text.dart';

class PrimaryTitle extends StatelessWidget {
  const PrimaryTitle(
    this.title, {
    super.key,
    this.maxLines,
    this.overflow,
    this.fontSize = fontSizeTitleDefault,
  });

  final String title;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return PrimaryBoldText(
      title,
      fontSize: fontSize,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
