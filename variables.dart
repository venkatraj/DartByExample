void main() {
  // infers to String type
  var a = 'Initial';
  print(a);
  print(a is String); // true

  // Explicit type anotation
  num b = 42;
  print(b);

  // final values can't be changed once declared
  final num c = 99;
  print(c);
  // c = 100; // error

  // use `const` for compile-time constants
  const double d = 44.5;
  print(d);
}
