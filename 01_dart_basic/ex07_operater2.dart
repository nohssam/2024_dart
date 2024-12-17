void main() {
  // 비교연산자
  int num1 = 1;
  int num2 = 2;
  print(num1 > num2);
  print(num1 < num2);
  print(num1 >= num2);
  print(num1 <= num2);
  print(num1 == num2);
  print(num1 != num2);
  print('-' * 30);

  // 논리연산자(&&, ||)
  bool res1 = 12 > 10 && 1 > 0;
  print(res1);

  res1 = 12 > 10 && 1 < 0;
  print(res1);

  res1 = 12 > 10 || 1 > 0;
  print(res1);

  res1 = 12 > 10 || 1 < 0;
  print(res1);

  res1 = 12 < 10 || 1 < 0;
  print(res1);
}
