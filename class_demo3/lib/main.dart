// 코드의 시작점
// 1단계 생성자
void main() {
  // 생성자 -- 강제성
  //Dog d1 = Dog('toto', 10, 'white', 100);
  Dog d1 = Dog(name: 'toto', age: 10, color: 'white', thirsty: 100);
} // end of main

class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  // 메서드, 함수, 생성 --> 파라미터 설계 (단일 라인 생성자 생략함)
  // 파라미터 선택적 매개 변수
  // 함수({}) -> 중괄호로 감싸기

  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty});
}
