import "package:test/test.dart";

String get s => "text";

void main() {
  test("core", () {
    expect(s, "text");
  });
}
