void main() {
  Idol cool = Idol();
  print(cool.name);
  print(cool.members);
  cool.sayHello();
  cool.Introduce();
  print('-' * 50);

  Idol koyote = Idol();
  print(koyote.name);
  print(koyote.members);
  koyote.sayHello();
  koyote.Introduce();
  print('-' * 50);
}

// 클래스 : 상태값, 기능
class Idol {
  String name = "쿨";
  List<String> members = ["이재훈", "유리", "김성수"];

  void sayHello() {
    print("안녕하세요. 쿨 입니다.");
  }

  void Introduce() {
    print("저희 멤버는  이재훈, 유리, 김성수가 있습니다.");
  }
}
