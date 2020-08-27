void main() {
  var test = {1, 2, 3, 3, 5};
  print(test is Set); // true
  print(test); // {1,2,3,5}
  var test1 = {'test': true};
  print(test1 is Map); // true
  var medals = new Set();
  medals.add('gold');
  medals.add('silver');
  medals.add('bronze');

  // HashSets use the equality operator (==)
  // to determine if it already contains an item
  print('has gold? ${medals.contains("gold")}');
  print('has platinum? ${medals.contains("platinum")}');

  // Sets can be constructed from Iterables
  var meals = new Set.from(['breakfast', 'lunch', 'dinner', 'dinner']);
  print(meals);

  // some built in features
  print(medals.union((meals)));
  print(medals.lookup('gold'));
  print(medals.lookup('platinum'));
  print(medals.difference(meals));
}
