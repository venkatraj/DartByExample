void main() {
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  // for...in for collections
  print('Collections: for...in');
  List<int> nums = [3, 4, 5];
  for (var num in nums) {
    print(num);
  }

  // Dart closures capture the value of the index, like JavaScript.
  List<Function> callbacks = [];
  for (num i = 6; i < 8; i++) {
    callbacks.add(() => print(i));
  }

  print(
      'callbacks is a collection of Functions? ${callbacks is List<Function>}');
  callbacks.forEach((fn) => fn());
}
