class Collections {
  //List, Map, Set
  Collections() {
    // listAdd();
    // listRemove();
    // collectionMap();
    collectionSet();
  }

  // listAdd
  // 변수 : String, int, bool
  // List = 여러개의 변수
  void listAdd() {
    int age = 35;

    List<int> listInt = [1, 2, 3, 4, 5, 6, 7];
    print('listInt 1: $listInt');

    listInt.add(age);
    print('listInt 2: $listInt');

    listInt.addAll([9, 8, 7, 6, 5]);
    print('listInt 3: $listInt');

    listInt.insert(0, 100);
    print('listInt 4: $listInt');
  }

  void listRemove() {
    List<String> nameList = [];

    nameList.add("test1");
    nameList.add("test2");
    nameList.add("test3");
    nameList.add("test4");
    nameList.add("test5");
    print('nameList 1 : $nameList');

    nameList.removeAt(1);
    print('nameList 2 : $nameList');

    nameList.removeLast();
    print('nameList 3 : $nameList');

    nameList.remove("test4");
    print('nameList 4 : $nameList');

    nameList.clear();
    print('nameList 5 : $nameList');
  }

  void listController() {
    List<int> ageList = [1, 2, 3, 4, 5, 6, 7];

    int size = ageList.length;
    print('size : $size');

    int first = ageList[0];
    print('first : $first');

    int second = ageList[5];
    print('second : $second');

    bool a = ageList.isEmpty;
    print('isEmpty : $a');

    bool b = ageList.isNotEmpty;
    print('isNotEmpty : $b');
  }

  void collectionMap() {
    Map m = {
      "key": "value",
      "a": "알파벳",
    };
    print('mmm : $m');

    String value = m["a"];
    print('value : $value');

    //추가
    m.putIfAbsent("b", () => "두번째");
    print('m2 : $m');

    m.putIfAbsent("b", () => "세번째");
    print('m3 : $m');

    m["b"] = '네번째';
    m["c"] = '다섯번째';
    print('m4 : $m');

    m.remove('a');
    print('m5 : $m');

    Map<String, dynamic> typeMap = {
      'a': 'aaaaa',
      'b': 100,
      'c': true,
      'd': 50.5,
    };

    print('typeMap : $typeMap');
  }

  void collectionSet() {
    Set s = {'a', 'b', 'c'};
    s.add('d');
    print('s : $s');

    s.addAll(['a', 2, 3, 4, 5, 6]);
    print('s2 : $s');

    s.remove('b');
    s.removeWhere((e) {
      return e == 3 || e == 4;
    });

    print('s3 : $s');

    var result = s.elementAt(1);
    print('result : $result');

    Set<int> intSet = {};
    intSet.add(123);
    intSet.add(456);

    print('intSet : $intSet');
  }
}
