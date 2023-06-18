import 'package:first_flutter/ch2/car/car.dart';

class Genesis extends Car{

  Genesis(super.price, super.carName, super.owner);

  void carWash(){
    print('$owner가 $carName를 세차하고 있습니다.');
  }

  @override
  void sell() {
    print('$owner가 $carName을 $price에 판매했습니다.');
  }
}