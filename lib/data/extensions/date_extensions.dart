extension DateExtensions on DateTime {

  String get formattedDate {
    final monthNames = [
      '', // Índice 0 no se utiliza
      'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
      'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
    ];

    final month = monthNames[this.month];
    final day = this.day;
    final year = this.year;

    return '$month $day, $year';
  }
}