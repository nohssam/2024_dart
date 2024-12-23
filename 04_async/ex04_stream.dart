import 'dart:async';

void main() {
  // 스트림은  비동기적으로 데이터가 들어올때 처리하기에 적합하며,
  // Dart 에서 비동기 프로그래밍으로 자주 사용된다.
  final controller = StreamController();
  final stream = controller.stream;

  // 값이 들어오면(이벤트발생) 실행한다.
  final streamListener1 = stream.listen((val) {
    print('Listener 1 : ${val}');
  });

  // 스트림에 데이터 추가 =>  stram.listen에 전달된다.
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
