void main() {
  if (7 % 2 == 0) {
    print('7 is even');
  } else {
    print('7 is odd');
  }

  if (8 % 4 == 0) {
    print('8 is divisible by 4');
  }

  // ternary operators
  bool isAlive = true;
  // inferred to String
  var monday = isAlive ? 'doctor' : null;
  print('monday appointment: $monday');
}
