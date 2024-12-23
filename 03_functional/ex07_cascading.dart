void main() {
  // cascading operator: ...
  // 리스트를 풀어서 새로운 리스트에 개별요소로 포함시킨다.
  // 리스트를 중첩 리스트로 만들지 않을 때 사용

  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7, 9];

  // [[2, 4, 6, 8], [1, 3, 5, 7, 9]]
  final result = [even, odd];
  print('result : ${result}');

  //  [2, 4, 6, 8, 1, 3, 5, 7, 9]
  final result2 = [...even, ...odd];
  print('result2 : ${result2}');

  print(even);
  print([...even]);
  print(even == [...even]); // fasle
}
