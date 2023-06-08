import 'dart:async';
import 'package:flutter/material.dart';
import 'package:informate/presentation/widgets/input/primary_text_field.dart';

class PrimaryDebouncedTextField extends StatefulWidget {
  const PrimaryDebouncedTextField({
    super.key,
    required this.onChanged,
    this.controller,
    this.hintText,
    this.padding,
    this.suffixIcon,
    this.labelText,
    this.prefixIcon,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final void Function(String) onChanged;
  final double? padding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  State<PrimaryDebouncedTextField> createState() =>
      _PrimaryDebouncedTextFieldState();
}

class _PrimaryDebouncedTextFieldState extends State<PrimaryDebouncedTextField> {
  Timer? _debounceTimer;
  bool _showClearButton = false;

  @override
  void dispose() {
    widget.controller?.removeListener(_textChangeListener);
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _handleOnChange(String value) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(const Duration(milliseconds: 1000), () {
      widget.onChanged(value);
    });
  }

  void _textChangeListener() {
    setState(() {
      _showClearButton = widget.controller?.text.isNotEmpty ?? false;
    });
  }

  @override
  void initState() {
    widget.controller?.addListener(_textChangeListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      controller: widget.controller,
      onChanged: _handleOnChange,
      hintText: widget.hintText,
      labelText: widget.labelText,
      padding: widget.padding,
      suffixIcon: _showClearButton
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.suffixIcon ?? Container(),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    widget.controller?.clear();
                    _handleOnChange('');
                  },
                ),
              ],
            )
          : widget.suffixIcon,
      prefixIcon: widget.prefixIcon,
    );
  }
}
