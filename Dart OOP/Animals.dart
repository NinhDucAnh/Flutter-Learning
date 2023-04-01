
class Animals{
    late String name;
    late int age;
    late String species;

    Animals(this.name, this.age, this.species);

    void eat(){
      print('$name is eating');
    }

    void move(){
      print('$name is moving');
    }

    void display(){
      print('Name: $name');
      print('Age: $age');
      print('Species: $species');
    }
}