void main() {
  Idol cool = const Idol('cool', ['이재훈', '김성수', '유리']);

  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.Introduce();
  print('-' * 50);

  Idol cool2 = const Idol('cool', ['이재훈', '김성수', '유리']);

  // const 로 만든 객체들은 메모리를 공유 = 동일한 주소를 사용  = 같다
  // cool 과 cool2는 완전히 동일한 값을 가지고 있는 객체 (주의의)
  print('같냐 ? : ${cool == cool2}');
}

class Idol {
  final name;
  final members;

  // 위 코드의 축약형
  const Idol(this.name, this.members);

  void sayHello() {
    print("안녕하세요. ${name} 입니다.");
  }

  void Introduce() {
    print("저희 멤버는 ${members}가 있습니다.");
  }
}
