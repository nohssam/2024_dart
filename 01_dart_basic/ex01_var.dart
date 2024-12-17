void main() {
  // var
  var name = '홍길동';
  var name2 = '임꺽정';
  var age = 10;

  print(name);
  print(name2);

  // 선언 두 번할 수 없다.
  // var name = '둘리';

  name = '둘리';
  // print("name = " + age);
  print("name = ${age}");
  print("name = $age");
}