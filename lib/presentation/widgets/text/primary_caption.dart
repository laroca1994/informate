import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';

class PrimaryCaption extends StatelessWidget {
  const PrimaryCaption(
    this.title, {
    this.color = Colors.grey,
    this.fontSize = fontSizeDefault,
    this.isToUpperCase = false,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
    super.key,
    this.maxLines,
    this.overflow,
  });

  final String title;
  final Color? color;
  final double fontSize;
  final bool isToUpperCase;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      isToUpperCase ? title.toUpperCase() : title,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
