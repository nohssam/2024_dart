void main() {
  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '슈가', 'group': 'BTS'},
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '정국', 'group': 'BTS'}
  ];
  // where는 filter 와 같음 즉, 조건을 만족하는 요소만 반환
  final res = people.where((x) => x['group'] == 'BTS').toList();
  print(res);
}
