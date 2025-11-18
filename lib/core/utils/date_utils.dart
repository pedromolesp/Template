import 'package:intl/intl.dart';

class DateUtils {
  static String formatAsDayMonthYear(DateTime date) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }

  static Duration timeBetween(DateTime startDate, DateTime endDate) {
    return endDate.difference(startDate);
  }
}
