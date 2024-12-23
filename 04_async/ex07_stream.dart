void main() {
  calc(2).listen((val) {
    print('calc(2) : ${val}');
  });

  calc(4).listen((val) {
    print('calc(4) : ${val}');
  });
}

// Stream<int> : 정수값을 비동기적으로 하나씩 전달하는 스트림을 반환한다
// async* : 비동기 반복을 처리하기 위한  Dart의 특별한 문법
// yield : 스트림에 값을 추가할때 사용, 반복문을 통해서 차례로 스트림에 추가
Stream<int> calc(int number) async* {
  for (var i = 0; i < 5; i++) {
    yield i * number;
    await Future.delayed(Duration(seconds: 1));
  }
}
