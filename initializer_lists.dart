import 'dart:math';

class Position {
  final int x;
  final int y;
  final double rad;

  // Since we use `final` as property values
  // We need to mention its values before
  // running contructor body
  // Initializer lists comes to rescue
  Position(int x, int y)
      : this.x = x,
        this.y = y,
        rad = atan2(y, x) {
    print('Printing after initializing finals');
  }
}

void main() {
  var p = new Position(2, 3);
  print('x: ${p.x} y: ${p.y}');
  print('rad: ${p.rad}');
}
