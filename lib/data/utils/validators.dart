import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

// validar que un bool sea true
Map<String, dynamic>? requiredTrueValidator(AbstractControl<dynamic> control) {
  return Validators.requiredTrue(control);
}

// validador donde el numero maximo sea 100
Map<String, dynamic>? max100Validator(AbstractControl<dynamic> control) {
  return Validators.max(100)(control);
}

// minimo 1
Map<String, dynamic>? min1Validator(AbstractControl<dynamic> control) {
  return Validators.min(1)(control);
}
