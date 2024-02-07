abstract class Animal {
  void sound();
}

class Dog implements Animal {
  void sound() {
    print('왈왈아를알왕 밥줘');
  }
}

class Cat implements Animal {
  void sound() {
    print('먀아 밥줘');
  }
}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐끔 배고파 뻐끔");
  }
}

// 전역 함수
void start(Animal a) {
  // Animal 추상 클래스의 sound 함수가 오버라이드 (무효화) 되고
  // 자식의 Dog, Cat sound 함수가 실행 된다.
  // 이것을 동적 바인딩이라고 한다.
  a.sound();
}

void main() {
  start(Dog());
  start(Cat());
}
