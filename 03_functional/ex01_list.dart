void main() {
  // 리스트는 중복이 가능하다.
  // 리스트를 다른 자료형으로 변경
  List<String> cool = ['이재훈', '유리', '김성수', '유리'];
  print(cool);
  print(cool.asMap());
  print(cool.toSet()); // 중복안됨
  print('-' * 50);

  Map coolMap = cool.asMap();
  print(coolMap);
  print(coolMap.keys); // Iterable 형태 ()
  print(coolMap.values); // Iterable 형태는 사용하지 않고 다른 타입으로 변경한다.
  print('-' * 50);

  print(coolMap.values.toList());
  print(coolMap.values.toSet());
  print('-' * 50);

  // 리스트를 Set 만드는 방버
  Set coolSet = Set.from(cool);
  print(coolSet);
  print('-' * 50);

  var n_cool = cool.map((x) {
    return '쿨 ${x}';
  });
  print(n_cool);
  print(n_cool.toList());
  print('-' * 50);

  var a_cool = cool.map((x) => '쿨2 ${x}');
  print(a_cool);
  print(a_cool.toList());
  print('-' * 50);

  String number = '13579';
  final res = number.split('');
  print(res); // 리스트로 나오다.

  // 1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg
  final res2 = number.split('').map((k) => '${k}.jpg').toList();
  print(res2);
}
