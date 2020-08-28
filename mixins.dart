import 'dart:math';

class Position {
  int x;
  int y;

  // If we declare constructor we can't use it as mixin
  // Position(this.x, this.y);

  double distanceTo(Position other) {
    var dx = other.x - x;
    var dy = other.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Square {
  int width;
  int height;

  // If we declare constructor we can't use it as mixin
  // Square(this.width, this.height);

  int get area => width * height;
}

// Classes can be mixed in using `with`
class SquareView extends Square with Position {}

void main() {
  var origin = new Position()
    ..x = 0
    ..y = 0;

  var square = SquareView()
    ..x = 5
    ..y = 5
    ..width = 10
    ..height = 10;

  print(square.distanceTo(origin));
  print(square.area);
}
