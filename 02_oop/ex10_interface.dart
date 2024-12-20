void main() {
  BoyGroup bts = BoyGroup('BTS');
  bts.sayName();

  GrilGroup blockPink = GrilGroup('블랙핑크');
  blockPink.sayName();

  print(bts is IdoInterface); // true
  print(bts is BoyGroup); // true
  print(bts is GrilGroup); // false
}

// dart는 interface 사용안함 => abstract class
// dart에서는 추상 클래스가 인터페이스를 대신한다.
abstract class IdoInterface {
  String name;
  IdoInterface(this.name);
  // 내용이 없는 메서드 : 추상메서드
  // void sayName() {}
  void sayName();
}

class BoyGroup implements IdoInterface {
  String name;

  BoyGroup(this.name);

  // 부모의 추상 메서드를 반드시 override 하자
  @override
  void sayName() {
    print('제 이름은 ${name} 입니다.');
  }
}

class GrilGroup implements IdoInterface {
  String name;

  GrilGroup(this.name);

  // 부모의 추상 메서드를 반드시 override 하자
  @override
  void sayName() {
    print('제 이름은 ${name} 입니다.');
  }
}
