void main() async {
  await addNumbers(1, 1);
  await addNumbers(2, 2);
}

// async 가 있어야   await 를 사용할 수 있다.
Future<void> addNumbers(int number1, int number2) async {
// void addNumbers(int number1, int number2) async {
  print('계산 요청 : ${number1} + ${number2}');

  // await 가 있으므로 아래로 진행하지는 못하지만 ,
  //  main의 다른 함수들은은 진행할수 있다.
  await Future.delayed(Duration(seconds: 2), () {
    print('서버가 계산 중 : ${number1} + ${number2}');
  });

  print('결과 받기  : ${number1 + number2}');
}
