class NullSafety{

  NullSafety(){
    print('age : $age, name : $name');
    print('age2 : $age2, name2 : $name2');
  }

  int age = 36;
  String name = '박용진';

  int? age2;
  String? name2 = "이순신";
}