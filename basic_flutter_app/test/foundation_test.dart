import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';

void main() {
  test("Key", () {
    expect(Key("a"), Key("a"));
  });
}
