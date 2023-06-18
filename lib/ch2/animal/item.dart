import 'package:first_flutter/ch2/animal/animal.dart';
import 'package:first_flutter/ch2/animal/bird.dart';

mixin Item{

  void wakeUp();

  void talk(){

  }
}

mixin Item2 on Animal{
  void nothing();
}