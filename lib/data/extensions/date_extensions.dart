extension DateExtensions on DateTime {
  // formateado a año/mes/dia
  String get formattedDate => '${year.toString()}/${month.toString().padLeft(2, '0')}/${day.toString().padLeft(2, '0')}';
}