void main() {
  Idol cool = Idol('cool', ['이재훈', '김성수', '유리']);

  // 중간에 변경할 수 있다.
  // 이때 이름을 변경하지 못하게 final를 사용한다.
  // cool.name = 'koyote';

  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.Introduce();
  print('-' * 50);
}

// 클래스 : 상태값, 기능
class Idol {
  // 한번지정하면 변경하지 못한다. final
  // final String name;
  // final List<String> members;

  // 축약 : 자료형을 지정하지 않아도 된다.
  final name;
  final members;

  // 위 코드의 축약형
  Idol(this.name, this.members);

  void sayHello() {
    print("안녕하세요. ${name} 입니다.");
  }

  void Introduce() {
    print("저희 멤버는 ${members}가 있습니다.");
  }
}
