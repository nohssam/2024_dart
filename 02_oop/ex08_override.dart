void main() {
  AddTwo add2 = AddTwo(10);
  print(add2.calc());
  print(add2.calc2());

  AddFour add4 = AddFour(10);
  print(add4.calc());
  print(add4.calc2());
}

class AddTwo {
  final int number;

  AddTwo(this.number);

  int calc() {
    return number + 2;
  }

  int calc2() {
    return number * 2;
  }
}

class AddFour extends AddTwo {
  // AddFour(super.number);
  AddFour(int number) : super(number);

  @override
  int calc() {
    // 생략 가능
    // return super.number + 4;
    return number + 4;
  }

  @override
  int calc2() {
    return super.calc() + 10;
  }
}
