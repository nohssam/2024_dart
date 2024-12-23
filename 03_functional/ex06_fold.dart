void main() {
  // fold : reduce 와 비슷하지만, 초기값을 명시적으로 설정
  //        reduce와 달리 실행한 타입과 결과 타입이 달라도 된다.
  List<int> numbers = [1, 3, 5, 7, 9];
  final result = numbers.fold(100, (prev, next) {
    print('---------');
    print('prev : ${prev}');
    print('next : ${next}');
    print('total : ${prev + next}');
    return prev + next;
  });
  print('result : ${result}');
  print('-' * 50);

  final result2 = numbers.fold(0, (prev, next) => prev + next);
  print('result2 : ${result2}');
  print('-' * 50);

  List<String> words = ['어서오세요 ', '여기는 ', '롯데월드 입니다.'];
  final result3 = words.fold('환영합니다. ', (prev, next) => prev + next);
  print(result3);
  // 환영합니다는 글자 수에 포함되지 않음
  final result4 = words.fold(0, (prev, next) => prev + next.length);
  print(result4);
}
