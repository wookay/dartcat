import 'package:test/test.dart';

void main() {
  test('isNegative', () {
    expect(true, (-1).isNegative);
  });

  test('isNaN', () {
    expect(true, (0/0).isNaN);
  });

  test('isInfinite', () {
    expect(true, (1/0).isInfinite);
  });

  test('remainder', () {
    expect(2, 5.remainder(3));
    expect(2, 5 % 3);
    expect(1, 10.remainder(3));
    expect(1, 10 % 3);
  });
}
