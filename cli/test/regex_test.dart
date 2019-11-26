import 'package:test/test.dart';

void main() {
  test('regex', () {
    RegExp regexp = RegExp(r"(H\w*)");
    RegExpMatch m = regexp.firstMatch("Hello");
    expect(m[0], "Hello");
    RegExpMatch notmatch = regexp.firstMatch("World");
    expect(notmatch, null);
  });
}
