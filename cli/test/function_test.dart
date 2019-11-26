import "package:test/test.dart";

int plusOne(int i) {
  return i + 1;
}

List<T> map<T>(Function f, List<T> l) {
  return l.map<T>((x) => f(x)).toList();
}

void main() {
  var f = (x) => 2 * x;
  test("f", () {
    expect(f(3), 6);
    expect(map(plusOne, [10, 11]), [11, 12]);
    expect(map(f, <int>[10, 11]), [20, 22]);
  });
}
