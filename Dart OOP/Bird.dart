import 'Animals.dart';

class Bird extends Animals{
  Bird(super.name, super.age, super.species);


  @override
  void eat(){
    super.eat();
    print('$name is eating seeds.');
  }

  void move(){
    super.move();
    print('$name is flying');
  }

}