import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/data/models/basic_response_model.dart';
import 'package:informate/presentation/widgets/input/primary_multiple_dropdown.dart';
import 'package:informate/presentation/widgets/status/status.dart';
import 'package:oxidized/oxidized.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PrimaryReactiveMultipleDropdown<T> extends HookWidget {
  const PrimaryReactiveMultipleDropdown({
    super.key,
    required this.formArray,
    this.labelBuilder,
    this.hintText,
    this.isExpanded = false,
    required this.provider,
    this.leading,
    required this.labelText,
    this.exceptions = const [],
  });

  final String Function(T)? labelBuilder;
  final FormArray? formArray;
  final String? hintText;
  final bool isExpanded;
  final AutoDisposeFutureProvider<Result<List<T>, ErrorResponse>> provider;
  final Widget Function(T)? leading;
  final String labelText;
  final List<T> exceptions;

  @override
  Widget build(BuildContext context) {
    final selectedValues =
        useState<List<T>>(formArray?.value?.map((e) => e as T).toList() ?? []);

    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final prov = ref.watch(provider);
        return PrimaryMultipleDropdown<T>(
          items: prov.asData?.value.when(
                ok: (data) => data,
                err: (error) => _onError(),
              ) ??
              _onError(),
          labelBuilder: labelBuilder,
          exceptions: [...selectedValues.value, ...exceptions],
          onChanged: (value) {
            selectedValues.value.add(value);
            formArray?.updateValue(selectedValues.value.reversed.toList());
          },
          leading: leading,
          labelText: labelText,
          hintText: _hintText(prov),
          icon: _icon(
            prov,
            () => ref.refresh(provider as Refreshable<VoidCallback>),
          ),
        );
      },
    );
  }

  Widget? _icon(AsyncValue async, VoidCallback onPressed) {
    if (async.hasError) {
      return IconButton(
          onPressed: onPressed, icon: const Icon(Icons.restart_alt));
    }
    if (async.isLoading) return const LoadingStatus();
    return null;
  }

  String _hintText(
    AsyncValue async,
  ) {
    if (async.hasError) return 'Pulse el icono para recargar';
    if (async.isLoading) return 'Cargando datos...';
    return 'Seleccione...';
  }

  List<T> _onError() {
    formArray?.reset();
    return List<T>.empty();
  }
}
