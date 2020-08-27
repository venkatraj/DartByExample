import 'dart:collection';

void main() {
  // Queues are optimized for adding to the head or tail
  // Items cannot be accessed by their index.
  var q = new Queue.from([300, 200, 100, 500]);

  // Queues implement iterable
  print(q.takeWhile((value) => value > 100)); // {300, 200}

  // consuming a queue
  for (var value in q) print(value);
  while (q.first > 100) {
    q.removeFirst();
  }

  print(q); // {100, 500}
}
