class Operator {
  Operator() {
    add();
    minus();
    divide();
    multiple();
    arithmetic();
    compare();
    typeCheck();
    typeCasting();
  }

  void add() {
    int age = 0;
    age = 10 + 10;
    print('add : $age');
    age += 30;
    print('add 2 : $age');
  }

  void minus() {
    int age = 0;
    age = 100 - 50;
    print('minus : $age');
    age -= 10;
    print('minus 2 : $age');
  }

  void divide() {
    double age = 5 / 2;
    print('divide age : $age');

    int age2 = 5 ~/ 2;
    print('divide age2 : $age2');

    double age3 = 5 % 2;
    print('divide age3 : $age3');
  }

  void multiple() {
    int age = 10 * 3;
    print('multiple age : $age');
  }

  void arithmetic() {
    double weight = 10.5;
    ++weight;
    print('arithmetic weight : $weight');

    --weight;
    --weight;
    --weight;
    --weight;
    --weight;
    weight -= 2;
    print('arithmetic weight 2: $weight');
  }

  void compare() {
    int p1 = 10;
    int p2 = 20;

    print('p1 == 10 : ${p1 == 10}');
    print('p1 == p2 : ${p1 == p2}');
    print('p1 != 10 : ${p1 != 10}');
    print('p1 != p2 : ${p1 != p2}');
    print('p1 > p2 : ${p1 > p2}');
    print('p1 < p2 : ${p1 < p2}');
    print('p1 >= 10 : ${p1 >= 10}');
    print('p1 <= 10 : ${p1 <= 10}');
  }

  void typeCheck() {
    int age = 36;
    String name = '테스트';
    print('age is int : ${age is int}');
    print('age is String : ${age is String}');
    print('age is bool : ${age is bool}');
    print('age is double : ${age is! double}');
  }

  void typeCasting() {
    int age = 36;
    print('typeCasting age : $age');

    double age2 = age.toDouble();
    print('typeCasting age2 : $age2');

    String age3 = age.toString();
    print('typeCasting age3 : $age3');
  }
}
