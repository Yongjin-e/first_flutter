import 'package:first_flutter/ch2/car/car.dart';
import 'package:first_flutter/ch2/car/carInterface.dart';

class Benz extends Car implements CarInterface{
  Benz(super.price, super.carName, super.owner);

  void repair(){
    print('$owner가 $carName를 수리했습니다.');
  }

  @override
  void sell() {
    print('$owner가 $carName을 $price에 판매했습니다.');
  }
}