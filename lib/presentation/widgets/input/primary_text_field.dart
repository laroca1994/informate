import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';
import 'package:informate/presentation/utils/decoration.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.textInputType,
    this.suffixIcon,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.padding = 18,
    this.ligth = false,
    this.onTap,
    this.onChanged,
    this.readOnly = false,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final FontWeight fontWeight;
  final double fontSize;
  final double? padding;
  final bool ligth;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      keyboardType: textInputType,
      onTap: onTap,
      readOnly: readOnly,
      onChanged: onChanged,
      controller: controller,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      decoration: customInputDecoration(
        context,
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
