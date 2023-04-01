import 'Animals.dart';

class Salamander extends Animals{
  Salamander(super.name, super.age, super.species);

  @override
  void eat() {
    print('$name is eating insects.');
  }

  @override
  void move() {
    print('$name is crawling.');
  }

}