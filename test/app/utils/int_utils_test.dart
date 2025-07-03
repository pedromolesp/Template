import 'package:flutter_test/flutter_test.dart';
import 'package:templateapp/app/utils/int_utils.dart';

void main() {
  test('Int Utils isSuccessCode true', () {
    expect(201.isSuccessCode(), true);
  });
  test('Int Utils isSuccessCode false', () {
    expect(401.isFailCode(), true);
  });
}
