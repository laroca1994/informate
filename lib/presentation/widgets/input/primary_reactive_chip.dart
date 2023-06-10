import 'package:flutter/material.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/chip_widget.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class PrimaryReactiveChip<T> extends StatelessWidget {
  const PrimaryReactiveChip({
    super.key,
    required this.formArray,
    this.avatar,
    this.deleteIcon = const Icon(Icons.delete_outline_rounded),
    this.onDeleted,
  });
  final FormArray<T> formArray;
  final Widget Function(T)? avatar;
  final Widget? deleteIcon;
  final Function(T)? onDeleted;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: formArray.value
                ?.map(
                  (element) => element == null
                      ? Container()
                      : ChipWidget<T>(
                          item: element,
                          isSelected: true,
                          avatar: avatar?.call(element),
                          deleteIcon: const Icon(Icons.delete_outline),
                          onDeleted: () => onDeleted?.call(element),
                        ).horizontalPadding(5),
                )
                .toList() ??
            [],
      ),
    );
  }
}
