/// Abstract classes can't be instantiated,
/// but can contain some implementation.
abstract class Animal {
  String name;
  Animal(this.name);
  String get noise;
}

/// Classes can be extended to share functionality
class Dog extends Animal {
  Dog(String name) : super(name);
  String get noise => 'bark!';
}

/// Classes can implment other classes if they
/// define all of the fields
class Pikachu implements Animal {
  String name = 'Pikachu';
  String get noise => 'pika!';
}

void releaseAnimals(Iterable animals) {
  animals.forEach(
      (animal) => print('${animal.name} has been release: ${animal.noise}'));
}

void main() {
  var barry = Dog('Barry');
  var pika = Pikachu();
  releaseAnimals([barry, pika]);
}
