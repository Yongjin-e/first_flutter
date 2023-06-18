import 'package:first_flutter/ch2/animal/animal.dart';

import 'dog_interface.dart';

class Dog extends Animal implements DogInterfacce{

  // Dog(super.name, super.age);

  Dog({required String name, required int age}) : super(name, age);

  @override
  void eat() {
    print('강아지 $name이(가) 밥을 먹고 있습니다.');
  }

  @override
  void sleep() {
    print('강아지 $name이(가) 자고 있습니다.');
  }

  @override
  void run() {
    print('강아지 $name이(가) 뛰고 있습니다.');
  }

  void swim(){
    print('강아지 $name이(가) 수영하고 있습니다.');
  }

  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void play() {
    // TODO: implement play
  }
}