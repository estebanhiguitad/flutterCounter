import 'package:contador/src/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'first',
    () {
      test('this is a test', () {
        expect(true, true);
      }, tags: ['test2']);
      test('this is a test 2', () {
        final expected = 3;
        final result = Calculator().add(1, 2);

        expect(expected, result);
      }, tags: ['test1']);
    },
  );
}
