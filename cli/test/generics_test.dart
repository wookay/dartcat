import "package:test/test.dart";

class G<T>{
  T a;
  G(this.a);
}

class Animal {
}

class Cat extends Animal {
}

void main() {
  test("generic 1", () {
    var g1 = new G(1);
    expect(g1.a, 1);
  });
  test("generic 2", () {
    var g2 = new G<int>(1);
    expect(g2.a, 1);
  });
  test("generic 3", () {
    var g3 = new G("hello");
    expect(g3.a, "hello");
  });
  test("generic 4", () {
    var g4 = new G(Cat());
    expect(true, g4.a is Cat);
  });
}
