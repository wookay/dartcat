import "package:test/test.dart";
import 'dart:convert' as JSON;

void main() {
  test("json", () {
    int n = JSON.jsonDecode("1");
    expect(n, 1);
    String s = JSON.jsonEncode(1);
    expect(s, "1");
  });
}
