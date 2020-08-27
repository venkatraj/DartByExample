void main() {
  // List<dynamic> list = ['also', 'growable'];
  var list = <dynamic>['also', 'growable'];
  list.add(42);
  print(list);

  // fixed length
  var fixed = List(3);
  list[0] = 'a';
  list[1] = 'b';
  list[2] = 'c';
  print(list);

  // growable
  var growable = new List();
  growable.addAll(['grow', 'able']);
  print(growable);

  // modifying growable lists during iteration
  // can cause ConcurrentModificationErrors
  var list3 = [47, 3, 25];
  try {
    for (var num in list3) {
      if (num < 10) {
        list3.remove(num);
      }
    }
  } catch (e) {
    print(e);
  }
}
