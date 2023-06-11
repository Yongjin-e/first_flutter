class ForLoop {
  ForLoop() {
    // nomalForLoop();
    // enhancedForLoop();
    // forEachLoop();
    testFor();
  }

  void nomalForLoop() {
    for (int i = 2; i < 10; i++) {
      print('for i : $i');
    }

    List<String> list = ['a','b','c','d','e'];

    for (int i = 0; i < list.length; i++) {
      print(list[i]);

      if(list[i] == 'b' || list[i] == 'd'){
        print('찾았다 : ${list[i]}');
      }
    }
  }

  void enhancedForLoop(){
    List<String> list = ['가','나','다','라','마'];

    for (String value in list) {
      print(value);
    }
  }

  void forEachLoop(){
    List<String> list = ['가','나','다','라','마'];

    list.forEach((element) {
      print(element);
    });
  }

  void testFor(){
    List<double> list = [1.1, 2.2, 3.3, 4.4, 5.5];

    for (int i = 0; i < list.length; i++) {
      print('nomal : ${list[i]}');
    }

    for (double value in list) {
      print('enhanced : $value');
    }

    list.forEach((e){
      print('foreach : $e');
    });
  }

}
