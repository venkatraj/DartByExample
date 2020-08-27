void main() {
  // Map<dynamic, dynamic>
  var colors = Map();
  colors['blue'] = false;
  colors['red'] = true;
  print(colors);

  // curly braces (literals!)
  // Map<String, bool>
  var shapes = {'square': false, 'triable': true};
  print(shapes);

  // keys and values can be iterated.
  // HashMap iterates in arbitrary order
  // LinkedHashMap & SplayTreeMap iterate in the
  // order they were added.

  // destructuring not possible yet!
  for (var entry in shapes.entries) print(entry);
  for (var key in shapes.keys) print(key);
  for (var value in shapes.values) print(value);
}
