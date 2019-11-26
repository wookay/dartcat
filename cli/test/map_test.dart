import "package:test/test.dart";

void main() {
  var dict = {1:2, 3:4};
  test("Map", () {
    expect(dict[1], 2);
    expect(dict.keys, [1, 3]);
    expect(dict.values, [2, 4]);
    dict[5] = 6;
    expect(dict.length, 3);
    expect(false, dict.isEmpty);
    expect(true, dict.isNotEmpty);
    expect(dict.entries.toList()[0].toString(), "MapEntry(1: 2)");
  });
}
