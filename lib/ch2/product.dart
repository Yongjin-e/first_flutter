class Product{

  String name;
  String company;
  int count = 0;
  int price = 50000;

  Product(this.name, this.company);

  void intro(){
    print('이름은 $name이며, $company에 다니고 있습니다.');
  }

  void sale(){
    count++;
    print('판매개수 : $count');
  }

  void sum(){
    print('회사 : $company, 제품 : $name, 매출액 : ${price * count}');
  }
}