import "package:test/test.dart";

class Fruit {
  taste() => 1;
}

class Lemon extends Fruit {
  @override
  taste() => 2;
}

void main() {
  test("override", () {
    var lemon = Lemon();
    expect(lemon.taste(), 2);
  });
}
