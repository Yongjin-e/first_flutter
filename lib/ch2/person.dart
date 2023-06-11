class Person {


  Person(this.name, this.age, this.weight);

  String name;
  int age;
  double weight;

  void talk() {
    print('$name이 대화를 신청했습니다.');
  }
}
