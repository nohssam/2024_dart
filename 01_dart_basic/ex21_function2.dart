void main() {
  showNumbers(10, 20, 30);
  print('-' * 50);

  showNumbers2(1000);
  print('-' * 50);

  showNumbers2(1, 2);
  print('-' * 50);
  print('-' * 50);

  showNumbers3(100);
  print('-' * 50);

  showNumbers3(100, 1000);
  print('-' * 50);

  showNumbers3(100, 1000, 10000);
  print('-' * 50);
}

showNumbers(int x, int y, int z) {
  print('x = ${x}');
  print('y = ${y}');
  print('z = ${z}');
}

// optional parameter : 있어도 되고 없어도 되는 파라미터터
// 이때 [int? y, int? z]  에  null 허용
showNumbers2(int x, [int? y, int? z]) {
  print('x = ${x}');
  print('y = ${y}');
  print('z = ${z}');
}

// 이때 sum 때문에 오류 발생
// ! 은 사용할 수없다, 초기값을 지정하면 된다.
// 값이 들어오면 들어온 값을 사용하고
// 값이 들어오지 않으면 초기값을 사용
showNumbers3(int x, [int y = 5, int z = 50]) {
  int sum = x + y + z;
  print('x = ${x}');
  print('y = ${y}');
  print('z = ${z}');
}
