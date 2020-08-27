void main() {
  for (var i in new Iterable.generate(1)) {
    print('not using `i`');
  }

  // using an underscore `_` silences warnings
  // of unused variables
  for (var _ in new Iterable.generate(1)) {
    print('no warnings');
  }
}
