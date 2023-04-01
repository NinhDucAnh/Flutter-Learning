
import 'Animals.dart';
import 'dart:io';

class Zoo {
  List<Animals> animals = [];


  Zoo(this.animals);

  void addAnimal(Animals animal) {
    animals.add(animal);
    print('Added ${animal.species} ${animal.name} to the zoo.');
  }

  void removeAnimalByName(String name) {
    Animals? animalToRemove = findAnimalByName(name);
    if (animalToRemove != null) {
      animals.remove(animalToRemove);
      print('Removed ${animalToRemove.species} ${animalToRemove.name} from the zoo.');
    } else {
      print('Animal not found.');
    }
  }

  void printAnimals() {
    if (animals.isEmpty) {
      print('No animals in the zoo.');
    } else {
      print('Animals in the zoo:');
      for (Animals animal in animals) {
        print('- ${animal.name} the ${animal.species}:');
        animal.eat();
        animal.move();
      }
    }
  }

  void sortAnimalsByName() {
    animals.sort((a, b) => a.name.compareTo(b.name));
  }

  Animals? findAnimalByName(String name) {
    return animals.firstWhere((animal) => animal.name == name, orElse: () =>Animals('not found',0,'not found' ));
  }

  void editAnimalInfo(String name) {
    // tìm đối tượng Animal
    // cho meo ga
    Animals? animalToEdit = findAnimalByName(name); // cho
    if (animalToEdit != null) {
      print('Enter new information for ${animalToEdit.species} ${animalToEdit.name}:');
      stdout.write('Name: ');
      //Sửa tên
      animalToEdit.name = stdin.readLineSync()!;
      stdout.write('Age: ');
      animalToEdit.age = int.parse(stdin.readLineSync()!);
      stdout.write('Species: ');
      animalToEdit.species = stdin.readLineSync()!;
      print('Animal information updated.');
    } else {
      print('Animal not found.');
    }
  }
}

