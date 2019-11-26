import 'dart:async';

// https://dart.dev/codelabs/async-await

void createOrderMessage() async {
  var order = await getUserOrder();
  print("order: $order");
  assert(order == "Large Latte");

  assert(1.runtimeType == int);
  assert(3.14.runtimeType == double);
  assert("".runtimeType == String);
  assert(null.runtimeType == Null);
  assert(true.runtimeType == bool);
  assert(int.parse("1") == 1);
  assert(int.tryParse("1.2") ?? 0 == 0);
}

Future<String> getUserOrder() {
  return Future.delayed(Duration(seconds: 1), () => 'Large Latte');
}

void main() async {
  await createOrderMessage();
}
