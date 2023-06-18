import 'package:first_flutter/ch2/car/car.dart';

class Sonata extends Car{

  Sonata(super.price, super.carName, super.owner);

  void refuel(){
    print('$owner가 $carName를 주유하고 있습니다.');
  }

  @override
  void sell() {
    print('$owner가 $carName을 $price에 판매했습니다.');
  }
}