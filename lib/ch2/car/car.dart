abstract class Car{
  double price;
  String carName;
  String owner;

  Car(this.price, this.carName, this.owner);

  void run(){
    print('$carName이 달리고 있습니다.');
  }

  void stop(){
    print('$carName이 정지했습니다.');
  }
}
