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
    print('매-에옹 밥줘');
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
  a.sound();
}

void main() {
  Dog d1 = Dog();
  Cat c1 = Cat();
  Fish f1 = Fish();

  d1.sound();
  c1.sound();
  f1.sound();
}
