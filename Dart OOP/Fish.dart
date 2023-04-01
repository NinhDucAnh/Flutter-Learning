import 'Animals.dart';

class Fish extends Animals {
  Fish(String name, int age, String species) : super(name, age, species);

  @override
  void eat() {
    print('$name is eating plankton.');
  }

  @override
  void move() {
    print('$name is swimming.');
  }
}