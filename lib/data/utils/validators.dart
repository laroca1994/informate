import 'package:informate/data/models/validation_message_model.dart';
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

// validate que DateIn sea anterior a DateOut
Map<String, dynamic>? correctDateValidator(AbstractControl<dynamic> control) {
  if (control is! FormGroup) {
    return null;
  }

  final dateIn = control.controls.values.first as FormControl<DateTime>;
  final dateOut = control.controls.values.last as FormControl<DateTime>;

  if (dateIn.value == null || dateOut.value == null) {
    return null;
  }
  // compara que dateIn sea menor que dateOut
  if (dateIn.value!.isAfter(dateOut.value!)) {
    return {MyValidationMessage.datesCorrect: true};
  }
  return null;
}

Map<String, dynamic>? correctListValidator(AbstractControl<dynamic> control) {
  if (control is! FormGroup) {
    return null;
  }

  final sourcesIn = control.controls.values.first as FormArray;
  final sourcesOut = control.controls.values.last as  FormArray;

  if (sourcesIn.value == null || sourcesOut.value == null) {
    return null;
  }
  // compara que la lista sourcesIn no exista ningun elemento que este en sourcesOut
  if (_contieneElementosComunes(sourcesIn.value!, sourcesOut.value!)) {
    return {MyValidationMessage.listCorrect: true};
  }
  return null;
}

bool _contieneElementosComunes(List<dynamic> lista1, List<dynamic> lista2) {
  return lista1.any((elemento) => lista2.contains(elemento));
}

Map<String, String Function(dynamic error)> validationMessage(
    // BuildContext context,
    ) {
  // final l10n = context.l10n;
  return {
    ValidationMessage.required: (error) => 'Este campo es requerido',
    ValidationMessage.email: (error) => 'Email inválido',
    ValidationMessage.mustMatch: (error) => 'Las contraseñas no coinciden',
    ValidationMessage.requiredTrue: (error) => 'Este campo es requerido',
    ValidationMessage.max: (error) => 'El valor no puede ser mayor a 100',
    ValidationMessage.min: (error) => 'El valor no puede ser menor a 1',
    ValidationMessage.compare: (error) => 'Las fechas son incorrectas',
    MyValidationMessage.datesCorrect: (error) => 'Las fechas son incorrectas',
    MyValidationMessage.listCorrect: (error) =>
        'Se encontraron elementos comunes en las listas.',
  };
}
