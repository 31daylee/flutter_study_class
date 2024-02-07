// 상속 구조 생성 -> 부모 클래스 단일 생성자 생성 -> 자식 클래스 -> 이니셜 라이져 생성
class Animal {
  String? name;
  int? age;
  Animal(this.name, this.age);
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);
}

void main() {
  Cat cat = Cat('야옹이', 3);
  print("${cat.name}는 ${cat.age}살입니다.");
}
