class Method {
  Method(){
    int age = add();
    print('Method.method age : $age');

    double result = calculate(10, 20);
    print('Method.method result : $result');

    var iResult = introduce(name: "test", name2: "test2");
    print('Method.method result : $iResult');

    var o =optional('test');
    print('ooo : $o');
  }

  int add(){
    return 30;
  }

  double calculate(int a, int b){
    return (a + b) / 2  * 1.5;
  }

  String introduce({
    required String name,
    required String name2
  }){
    return "안녕하세요. $name입니다.";
  }

  String optional(String a,{String b='빈 값'}){
    return "안녕하세요. $a, $b, 입니다.";
  }

}
