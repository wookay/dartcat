import 'package:test/test.dart';
import 'dart:math';

deg2rad(deg) => deg/180*pi;

void main() {
  test('e', () {
    expect(true, e  > 2.718281);
    expect(true, pi > 3.141592);
    expect(cos(deg2rad(360)), 1);
  });
}
