void main() {
  // Map {key:value};
  Map<String, String> map = {"id": "hong", "pw": "h123", "name": "홍길동"};
  print(map);

  // 추가
  map["age"] = "24";
  print(map);

  // 여러개 추가가
  map.addAll({"addr": "서울", "phone": "010-9999-9999"});
  print(map);

  // 데이터변경
  map["id"] = "kang";
  print(map);

  // 꺼내기
  print(map["name"]);

  // 삭제하기
  map.remove("age");
  print(map);

  // kay값 가져오기, value값 가져오기
  print(map.keys);
  print(map.values);
}
