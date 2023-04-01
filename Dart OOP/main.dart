import 'Animals.dart';
import 'Bird.dart';
import 'Fish.dart';
import 'Salamander.dart';
import 'Zoo.dart';

void main(){
  List<Animals> animals= [];
  Zoo zoo = Zoo(animals);
  Bird bird = Bird('Bồ câu ', 2, 'bay được ');
  Fish fish = Fish('Ca map ', 10, 'an thit');
  Salamander salamander = Salamander('ki nhong ', 5, 'an bọ ');
  zoo.addAnimal(bird);
  zoo.addAnimal(fish);
  zoo.addAnimal(salamander);
  zoo.editAnimalInfo(bird.name);
  zoo.removeAnimalByName(salamander.name);
  zoo.sortAnimalsByName();
  zoo.printAnimals();
}
