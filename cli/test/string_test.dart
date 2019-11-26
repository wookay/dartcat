import 'package:test/test.dart';

void main() {
  test('codeUnits', () {
    expect("가".codeUnits, [44032]);
  });
}
