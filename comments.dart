/// Dartdoc parses these comments for creating documentation
/// Represents a two-dimensional position
/// hax [x] and [y] properties
///
/// example code can be defined using a four-space indent:
///   var p = new Position();
///
class Position {
  /*
  This is
  multi-line
  comment
  */
  int x;
  // a regular single line comment
  int y;
}

void main() {
  print(new Position().runtimeType);
}
