void main() {
  // record : dart3.0에서 업데이트 , python의  튜플
  //          list, map, set 처럼 여러값을 묶어서  저자하는 구조
  //          list, map, set 보다 더 간결하고 타입이 좀더 안전한 방식으로 처리리
  //
  // 기호	  이름	      주요 용도
  //  ()	  Record	    여러 값을 간단히 묶어서 저장
  //  []	  List	      순서가 있는 데이터 저장
  //  {}	  Map	        키-값 쌍으로 데이터 저장
  //  {}	  Set	        중복 없는 데이터 집합
  //  <>	  Generic	     제네릭으로 타입 명시
  final result = nameAndAge({'name': 'jongMin', 'age': 45});
  print(result);
  print(result[0]);
  print(result[1]);

  final result2 = nameAndAge2({'name': 'jongMin', 'age': 45});
  print(result2);
  print(result2.$1);
  print(result2.$2);
}

nameAndAge(Map<String, dynamic> map) {
  return [map['name'], map['age']];
}

(String, int) nameAndAge2(Map<String, dynamic> map) {
  return (map['name'] as String, map['age'] as int);
}

List<Map<String, dynamic>> getKoyote() {
  return [
    {'name': '신지', 'age': 43},
    {'name': '종민', 'age': 45},
    {'name': '빽가', 'age': 43},
  ];
}

List<(String, int)> getKoyote2() {
  return [
    ('신지', 43),
    ('종민', 45),
    ('빽가', 43),
  ];
}

List<(String name, int age)> getKoyote3() {
  return [
    ('신지', 43),
    ('종민', 45),
    ('빽가', 43),
  ];
}

List<({String name, int age})> getKoyote4() {
  return [
    (name: '신지', age: 43),
    (name: '종민', age: 45),
    (name: '빽가', age: 43),
  ];
}

List<(String name, int age, String group)> getKoyote5() {
  return [
    ('신지', 43, '코요태'),
    ('종민', 45, '코요태'),
    ('빽가', 43, '코요태'),
  ];
}
