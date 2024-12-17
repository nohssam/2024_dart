void main() {
  // Dart에서는 배열 대신 리스트 사용
  // List 중복가능
  List<String> list = ["둘리", "희동이"];
  print(list);
  print(list[0]); // 인덱스를 이용한 요소 꺼내기
  print(list.length); // list의 길이

  // 하나 추가 : add
  list.add("도우너");
  print(list);

  // 여러개 추가
  list.addAll(["공실이", "둘리"]);
  print(list);

  // 삽입(insert)
  list.insert(1, "박지성");
  print(list);

  list.insertAll(1, ["손흥민", "김민재"]);
  print(list);

  // 삭제 : remove(Object); // 여러개 있을때 는 앞에있는 요소가 삭제됨
  list.remove("둘리");
  print(list);

  // 삭제 : remove(index);
  list.removeAt(3);
  print(list);

  list.removeLast();
  print(list);

  list.removeRange(1, 3);
  print(list);
  print('-' * 30);

  list = ["Spring", "Java", "Dart"];
  // 포함 여부 확인
  print(list.contains('Java')); // true

  // 특정요소 인덱스
  print(list.indexOf("Dart")); // 2

  // 서브리스트 반환
  print(list.sublist(1, 3));
  print(list); // 원래 리스트 그대로이다.

  // 리스트 뒤집기
  print(list.reversed.toList());

  // 리스트 초기화
  list.clear();
  print('${list}, ${list.length}');
}
