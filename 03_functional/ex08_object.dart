void main() {
  final List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': '정국', 'group': 'BTS'},
    {'name': '슈가', 'group': 'BTS'}
  ];

  // ! 의미는 무조건 key가  name, group 이 존재한다고 가정한다.
  final parsePeople =
      people.map((x) => Person(name: x['name']!, group: x['group']!)).toList();

  print(parsePeople);
  print('-' * 50);

  // 이름만 추출
  for (var k in parsePeople) {
    print('${k.name}');
  }
  print('-' * 50);

  final bts1 = parsePeople.map((x) => x.name).toList();
  print('bts1 : ${bts1}');
  print('-' * 50);

  // BTS 만 추출
  final bts2 = parsePeople.where((x) => x.group == 'BTS').toList();
  print(bts2);
  print('-' * 50);

  // BTS 만 추출
  final bts3 =
      parsePeople.where((x) => x.group == 'BTS').map((x) => x.name).toList();
  print(bts3);
  print('-' * 50);
}

class Person {
  final String name;
  final String group;
  Person({required this.name, required this.group});

  // 모든 클래스는 Object 상속받는다.
  @override
  String toString() {
    return 'name : ${name}, group:${group}';
  }
}
