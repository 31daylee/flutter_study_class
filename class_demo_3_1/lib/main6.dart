class Dog {
  void sound() {
    print('왈왈아를알왕 밥줘');
  }
}

class Cat {
  void sound() {
    print('매-에옹 밥줘');
  }
}

class Fish {
  void hungry() {
    print("뻐끔뻐끔 배고파");
  }
}

void main() {
  Dog d1 = Dog();
  Cat c1 = Cat();

  d1.sound();
  c1.sound();
}
