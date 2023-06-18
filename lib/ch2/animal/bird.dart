import 'package:first_flutter/ch2/animal/animal.dart';
import 'package:first_flutter/ch2/animal/animal_interface.dart';
import 'package:first_flutter/ch2/animal/dog_interface.dart';
import 'package:first_flutter/ch2/animal/item.dart';

class Bird extends Animal with Item, Item2 implements AnimalInterface, DogInterfacce{
  Bird(super.name, super.age);

  @override
  void eat() {}

  @override
  void sleep() {}

  @override
  void run() {
    super.run();
    print('Bird 클래스의 run');
  }

  @override
  void hunting() {}

  @override
  void rest() {}

  @override
  void fly() {}

  @override
  void jump() {}

  @override
  void play() {}

  @override
  void wakeUp() {}

  @override
  void talk() {
    super.talk();
  }

  @override
  void nothing() {}
}
