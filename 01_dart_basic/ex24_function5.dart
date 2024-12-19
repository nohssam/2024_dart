void main() {
  int result = addNumbers(kor: 90, eng: 90, math: 90);
  print('result : ${result}');
  print('-' * 50);

  int result2 = addNumbers2(kor: 80, eng: 80, math: 80);
  print('result2 : ${result2}');

  int result3 = addNumbers3(90, eng: 90);
  print('result3 : ${result3}');
  print('-' * 50);

  int result4 = addNumbers4(eng: 90, 30);
  print('result4 : ${result4}');
  print('-' * 50);

  int result5 = addNumbers4(30, eng: 90, math: 80);
  print('result5 : ${result5}');
}

// arrow function - 화살표 함수
int addNumbers({required int kor, required int eng, required int math}) {
  int sum = kor + eng + math;
  print('kor = ${kor}');
  print('eng = ${eng}');
  print('math = ${math}');
  return sum;
}

int addNumbers2({required int kor, required int eng, required int math}) =>
    kor + eng + math;

int addNumbers3(int kor, {required int eng, int math = 60}) => kor + eng + math;

int addNumbers4(int kor, {required int eng, int math = 60}) {
  int sum = kor + eng + math;
  print('kor = ${kor}');
  print('eng = ${eng}');
  print('math = ${math}');
  return sum;
}
