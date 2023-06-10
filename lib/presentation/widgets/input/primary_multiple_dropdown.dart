import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/utils/decoration.dart';
import 'package:informate/presentation/widgets/text/primary_text.dart';

class PrimaryMultipleDropdown<T> extends HookWidget {
  const PrimaryMultipleDropdown({
    super.key,
    required this.items,
    this.labelBuilder,
    this.onChanged,
    this.icon,
     this.hintText = 'Seleccione...',
    required this.labelText,
    this.exceptions = const [],
    this.leading,
  });

  final String Function(T)? labelBuilder;
  final void Function(T)? onChanged;
  final List<T> items;
  final Widget? icon;
  final String hintText;
  final String labelText;
  final List<T> exceptions;
  final Widget Function(T)? leading;

  @override
  Widget build(BuildContext context) {
    final selectedValues = useState<Set<T>>({});

    return DropdownButtonFormField<T>(
      items: items.map(
        (item) {
          final enabled = !exceptions.contains(item);
          return DropdownMenuItem<T>(
            value: item,
            enabled: enabled,
            child: Row(
              children: [
                if (leading != null) leading!.call(item).horizontalPadding(5),
                Text(
                  labelBuilder?.call(item) ?? item.toString(),
                  style: TextStyle(
                      decoration: enabled ? null : TextDecoration.lineThrough),
                ),
              ],
            ),
          );
        },
      ).toList(),
      onChanged: (newValue) {
        if (newValue == null) return;
        selectedValues.value.add(newValue);
        onChanged?.call(newValue);
      },
      decoration: primaryInputDecoration(context, labelText: labelText),
      icon: icon,
      isExpanded: true,
      hint: PrimaryText(hintText),
      isDense: true,
    );
  }
}
