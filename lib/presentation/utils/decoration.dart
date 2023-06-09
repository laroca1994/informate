import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';

InputDecoration customInputDecoration(
  BuildContext context, {
  String? labelText,
  String? hintText,
  Widget? suffixIcon,
  Widget? prefixIcon,
}) {
  final primaryColor = Theme.of(context).textTheme.bodyMedium!.color!;

  return InputDecoration(
    labelText: labelText,
    hintText: hintText,
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    isDense: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadiusDefault),
      borderSide: BorderSide(color: primaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadiusDefault),
      borderSide: BorderSide(color: primaryColor),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadiusDefault),
      borderSide: BorderSide(color: primaryColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadiusDefault),
      borderSide: BorderSide(color: primaryColor),
    ),
    // sin bordes
    disabledBorder: InputBorder.none,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadiusDefault),
      borderSide: BorderSide(color: primaryColor),
    ),
  );
}

ButtonStyle customButtonStyle({Color? backgroundColor}) {
  return ButtonStyle(
    // backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
    //   if (states.contains(MaterialState.disabled)) {
    //     return Colors
    //         .grey; // Establece el color deseado para el estado deshabilitado
    //   }
    //   return Colors.blue;
    // }),
    // foregroundColor: MaterialStateProperty.all(Colors.white),
    backgroundColor: MaterialStateProperty.all(backgroundColor),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadiusDefault),
    )),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    ),
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

BottomNavigationBarItem customBottomNavigationBarItem({
  required IconData icon,
  required String label,
  required BuildContext context,
}) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      size: 34,
    ),
    label: label,
    activeIcon: ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).colorScheme.secondary,
          ],
        ).createShader(bounds);
      },
      child: Icon(
        icon,
        size: 34,
      ),
    ),
  );
}
