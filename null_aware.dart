void main() {
  // The ?? operator returns the first expression if it is not `null`
  String monday = 'doctor';
  var tuesday;
  // next is inferred to String `doctor`
  // as tuesday is `null`
  var next = tuesday ?? monday;
  print('next appointment: $next');

  // the ??= operator assigns a value only if the left operand is null
  var test1;
  var test2 = 10;
  var test3;
  // test2 will be 10, because it is not null to be assigned another value
  test2 ??= test1;

  // test3 will be 10, because it is null and assigned new value
  test3 ??= test2;
  print('test1 is $test1 and test2 is $test2 and test3 is $test3');

  var wednesday;
  next ??= wednesday;
  print('next appointment: $next');

  // ? operator make sure it is not null, before proceeding
  String thursday;
  // there is no error for calling length property on null
  // because it won't be called.
  var length = thursday?.length;
  print('length is $length');
}
