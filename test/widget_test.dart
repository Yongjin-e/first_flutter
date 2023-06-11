import 'package:first_flutter/ch1/collections.dart';
import 'package:first_flutter/ch1/conditional.dart';
import 'package:first_flutter/ch1/for_loop.dart';
import 'package:first_flutter/ch1/method.dart';
import 'package:first_flutter/ch1/operrator.dart';
import 'package:first_flutter/ch1/variable.dart';
import 'package:first_flutter/ch2/coffee/americano.dart';
import 'package:first_flutter/ch2/coffee/latte.dart';
import 'package:first_flutter/ch2/person.dart';
import 'package:first_flutter/ch2/product.dart';


void main() {
  // Variable();
  // Operator();
  // Method();
  // Conditional();
  // Collections();
  // ForLoop();
  // Person person = Person('홍길동', 36, 80.5);
  // person.talk();
  //
  // Person person2 = Person('손오공', 41, 75.8);
  // person2.talk();
  //
  // Person person3 = Person('테스터', 23, 55.0);
  // person3.talk();

  // Product a = Product('테스터','더조은컴퓨터학원');
  //
  // a.sale();
  // a.sale();
  // a.sale();
  //
  // a.sum();
  //
  //
  // Product b = Product('컴퓨터','더조은컴퓨터학원');
  //
  // b.sale();
  // b.sale();
  // b.sale();
  // b.sale();
  // b.sale();
  //
  // b.sum();

  Americano americano = Americano('프리미엄 아메리카노',8000, false, false);
  americano.sale();
  americano.service();
  americano.refund();

  Latte latte = Latte('저렴한 라떼', 1500, true, true);
  latte.service();
  latte.refund();
}
