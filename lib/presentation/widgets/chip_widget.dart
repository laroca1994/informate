import 'package:flutter/material.dart';
import 'package:informate/presentation/widgets/text/primary_text.dart';

class ChipWidget<T> extends StatelessWidget {
  const ChipWidget({
    super.key,
    this.avatar,
    this.isSelected = false,
    required this.item,
    this.onDeleted,
    this.deleteIcon,
  });
  final Widget? avatar;
  final Widget? deleteIcon;
  final bool isSelected;
  final T item;
  final void Function()? onDeleted;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      avatar: avatar,
      label: PrimaryText(item.toString()),
      selected: isSelected,
      deleteIcon: deleteIcon,
      deleteIconColor: Colors.red,
      onDeleted: onDeleted,
    );
  }
}
