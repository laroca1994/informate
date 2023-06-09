import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'presentation_commons_providers.g.dart';

@riverpod
class TextFieldVisible extends _$TextFieldVisible {
  
   @override
  bool build() {
    return false;
  }

  void toggle()=> state = !state;

  void visible()=> state = true;

  void invisible()=> state = false;
}