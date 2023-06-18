abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat();

  void sleep();

  void run() {
    print('$name이 도망간다');
  }
}
