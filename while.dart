void main() {
  int i = 0;

  while (i++ < 2) {
    print('while $i');
  }

  int j = 0;
  do {
    print('do_while $j');
  } while (j++ < 2);
}
