import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/core/gen/assets.gen.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/input/primary_debounced_text_field.dart';

class PrimarySearch extends StatefulWidget {
  const PrimarySearch({
    super.key,
    this.showFilter = false,
    this.onPressed,
   required this.labelText,
    required this.filter,
  });
  final bool showFilter;
  final String labelText;
  final void Function()? onPressed;
  final void Function(String) filter;

  @override
  State<PrimarySearch> createState() => _PrimarySearchState();
}

class _PrimarySearchState extends State<PrimarySearch> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Consumer(
            builder: (_, ref, __) {
              return PrimaryDebouncedTextField(
                labelText: widget.labelText,
                hintText: "Escriba lo que desea buscar",
                controller: controller,
                padding: 15,
                onChanged: (value) {
                  widget.filter(value);
                  controller
                    ..text = value
                    ..selection = TextSelection.fromPosition(
                      TextPosition(offset: value.length),
                    );
                },
                prefixIcon: Assets.svg.search.svg().horizontalPadding(10),
              );
            },
          ),
        ),
        Visibility(
          visible: widget.showFilter,
          child: IconButton(
            icon: Assets.svg.filter.svg(),
            splashRadius: 25,
            onPressed: widget.onPressed,
          ),
        ),
      ],
    );
  }
}
