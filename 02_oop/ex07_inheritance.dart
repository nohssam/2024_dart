void main() {
  print('------ 쿨 -----------');
  Idol cool = Idol('쿨', 3);
  cool.sayHello();
  cool.Introduce();

  print('------ BTS -----------');
  // Idol bts = BoyGroup('BTS', 7);
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayHello(); // 부모 꺼
  bts.Introduce(); // 부모 꺼
  bts.sayMale(); // 자기 꺼
  print('-' * 50);

  print('------ apink -----------');
  GrilGroup apink = GrilGroup('apink', 5);
  apink.sayHello(); // 부모 꺼
  apink.Introduce(); // 부모 꺼
  apink.sayFemale(); // 자기 꺼
  print('-' * 50);
}

// 상속 : 상속을 받으면 부모 클래스의 모든 속성을
//        자식클랙스가 사용할 수 있다.
class Idol {
  String name;
  int membersCount;

  Idol(this.name, this.membersCount);

  void sayHello() {
    print("저는 ${name} 입니다.");
  }

  void Introduce() {
    print("${name}은 ${membersCount}명의 멤버가 있습니다.");
  }
}

// 자식클래스는  부모클래스의 생성자를 준수해야 한다.
class BoyGroup extends Idol {
  BoyGroup(String n, int m) : super(n, m);

  void sayMale() {
    print('저는 남자 아이돌 입니다.');
  }
}

// 자식클래스는  부모클래스의 생성자를 준수해야 한다.
class GrilGroup extends Idol {
  GrilGroup(String n, int m) : super(n, m);

  void sayFemale() {
    print('저는 여자 아이돌 입니다.');
  }
}
