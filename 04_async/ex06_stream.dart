import 'dart:async';

void main() {
  final controller = StreamController();
  // 리스너가 하나일때만 사용
  // final stream = controller.stream;

  //  리스너가 여러개 일때
  final stream = controller.stream.asBroadcastStream();

  // 값이 들어오면(이벤트발생) 실행한다.
  // 짝수만
  final streamListener1 = stream.where((x) => x % 2 == 0).listen((val) {
    print('Listener 1 : ${val}');
  });

  // 홀수만
  final streamListener2 = stream.where((x) => x % 2 == 1).listen((val) {
    print('Listener 2 : ${val}');
  });

  // 스트림에 데이터 추가 =>  stram.listen에 전달된다.
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
