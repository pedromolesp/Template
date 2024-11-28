import 'package:flutter_test/flutter_test.dart';
import 'package:templateapp/app/utils/date_utils.dart';

void main() {
  test('Date Utils formatAsDayMonthYear', () {
    String matcher = '01/01/2021';
    expect(DateUtils.formatAsDayMonthYear(DateTime(2021)), matcher);
  });
  test('Date Utils timeBetween', () {
    expect(DateUtils.timeBetween(DateTime(2021), DateTime(2021, 2)),
        const Duration(days: 31));
  });
}
