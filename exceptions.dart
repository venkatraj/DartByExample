class FoodSpoiledError extends StateError {
  FoodSpoiledError(String msg) : super(msg);
}

class Potato {
  int age;

  Potato(this.age);

  String peel() {
    if (age > 4) {
      throw new FoodSpoiledError('your potato is spoiled');
    }
    return 'peelded';
  }
}

main() {
  Potato p = Potato(7);

  try {
    p.peel();
  } on FoodSpoiledError catch (_) {
    print('nope! ' * 3);
  }

  // any non-null object can be thrown
  try {
    throw ('Potato');
  } catch (_) {
    print('caught a flying potato');
  }

  // exceptions halt execution
  p.peel();
  print('not reached');
}
