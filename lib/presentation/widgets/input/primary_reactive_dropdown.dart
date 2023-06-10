import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:informate/data/utils/validators.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/utils/decoration.dart';
import 'package:informate/presentation/widgets/status/status.dart';
import 'package:informate/presentation/widgets/text/primary_text.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PrimaryReactiveDropdown<T> extends HookWidget {
  const PrimaryReactiveDropdown({
    super.key,
    this.formControl,
    this.formControlName,
    this.items = const [],
    this.hintText,
    this.label,
    this.isExpanded = true,
    this.isLoading = false,
    this.hasError = false,
    this.onError,
    this.light = false,
    this.prefixIcon,
    this.readOnly = false,
    this.onChanged,
  });
  final FormControl<T>? formControl;
  final String? formControlName;
  final List<T> items;
  final String? hintText;
  final String? label;
  final bool isExpanded;
  final bool isLoading;
  final bool hasError;
  final void Function()? onError;
  final bool light;
  final Widget? prefixIcon;
  final bool readOnly;
  final void Function(FormControl<T?>)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          PrimaryText(
            label!,
          ).verticalPadding(5),
        ReactiveDropdownField<T>(
          key: key,
          readOnly: readOnly || isLoading,
          formControl: formControl,
          formControlName: formControlName,
          icon: hasError
              ? RefreshStatus(onRefresh: onError)
              : isLoading
                  ? const LoadingStatusAdaptative()
                  : null,
          borderRadius: BorderRadius.circular(10),
          decoration: primaryInputDecoration(
            context,
            prefixIcon: prefixIcon,
          ),
          isExpanded: isExpanded,
          hint: Text(
            hasError
                ? 'Error al obtener los datos'
                : isLoading
                    ? 'Cargando'
                    : hintText ?? 'Seleccione...',
            style: TextStyle(
              color: (readOnly || isLoading)
                  ? Colors.grey
                  : light
                      ? Colors.white
                      : Colors.black,
            ),
          ),
          onChanged: onChanged,
          selectedItemBuilder: (context) => items
              .map(
                (e) => PrimaryText(e.toString()),
              )
              .toList(),
          items: items
              .map(
                (e) => DropdownMenuItem<T>(
                  value: e,
                  child: PrimaryText(e.toString()),
                ),
              )
              .toList(),
          validationMessages: validationMessage(),
        ),
      ],
    ).verticalPadding(10);
  }
}
