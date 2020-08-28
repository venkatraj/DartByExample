import 'dart:math';

class Position {
  int _x;
  int _y;

  Position(this._x, this._y);

  double get rad => atan2(_y, _x);

  void set x(int val) {
    _x = val;
  }
}

void main() {
  Position p = new Position(2, 3);
  p.x = 10;
  // Can't set `y` because there is no setter method
  // p.y = 20;
  print('x: ${p._x} y: ${p._y}');
  print('rad: ${p.rad}');
}
