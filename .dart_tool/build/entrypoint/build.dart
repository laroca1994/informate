// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:riverpod_generator/builder.dart' as _i2;
import 'package:retrofit_generator/retrofit_generator.dart' as _i3;
import 'package:freezed/builder.dart' as _i4;
import 'package:json_serializable/builder.dart' as _i5;
import 'package:source_gen/builder.dart' as _i6;
import 'package:reactive_forms_generator/builder.dart' as _i7;
import 'package:auto_route_generator/builder.dart' as _i8;
import 'dart:isolate' as _i9;
import 'package:build_runner/build_runner.dart' as _i10;
import 'dart:io' as _i11;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'riverpod_generator:riverpod_generator',
    [_i2.riverpodBuilder],
    _i1.toDependentsOf(r'riverpod_generator'),
    hideOutput: true,
    appliesBuilders: const [r'source_gen:combining_builder'],
  ),
  _i1.apply(
    r'retrofit_generator:retrofit_generator',
    [_i3.retrofitBuilder],
    _i1.toDependentsOf(r'retrofit_generator'),
    hideOutput: true,
    appliesBuilders: const [r'source_gen:combining_builder'],
  ),
  _i1.apply(
<<<<<<< HEAD
    r'freezed:freezed',
    [_i4.freezed],
    _i1.toDependentsOf(r'freezed'),
    hideOutput: false,
  ),
  _i1.apply(
    r'json_serializable:json_serializable',
    [_i5.jsonSerializable],
=======
    [_i4.jsonSerializable],
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    _i1.toDependentsOf(r'json_serializable'),
    hideOutput: true,
    appliesBuilders: const [r'source_gen:combining_builder'],
  ),
  _i1.apply(
    r'source_gen:combining_builder',
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.apply(
    r'reactive_forms_generator:reactive_forms_generator',
<<<<<<< HEAD
    [_i7.reactiveFormsGenerator],
=======
    [_i6.reactiveFormsGenerator],
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    _i1.toDependentsOf(r'reactive_forms_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'auto_route_generator:auto_route_generator',
<<<<<<< HEAD
    [_i8.autoRouteBuilder],
=======
    [_i7.autoRouteBuilder],
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    _i1.toDependentsOf(r'auto_route_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'auto_route_generator:auto_router_module_generator',
<<<<<<< HEAD
    [_i8.autoRouterModuleBuilder],
=======
    [_i7.autoRouterModuleBuilder],
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    _i1.toDependentsOf(r'auto_route_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'auto_route_generator:auto_router_generator',
<<<<<<< HEAD
    [_i8.autoRouterBuilder],
=======
    [_i7.autoRouterBuilder],
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    _i1.toDependentsOf(r'auto_route_generator'),
    hideOutput: false,
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
<<<<<<< HEAD
    _i6.partCleanup,
=======
    _i5.partCleanup,
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
  ),
];
void main(
  List<String> args, [
<<<<<<< HEAD
  _i9.SendPort? sendPort,
]) async {
  var result = await _i10.run(
=======
  _i8.SendPort? sendPort,
]) async {
  var result = await _i9.run(
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
    args,
    _builders,
  );
  sendPort?.send(result);
<<<<<<< HEAD
  _i11.exitCode = result;
=======
  _i10.exitCode = result;
>>>>>>> 6959d200b4823ccb0a08223dd4d459952b013c32
}
