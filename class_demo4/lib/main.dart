// dart에서 기본적으로 제공하는 라이브러리를 import 합니다.
import 'dart:math';

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  print(nums[0]);
  print(nums[1]);
  print(nums[2]);
  print(nums[3]);
  print(nums[4]);

  // map 리터럴은 중괄호
  Map<String, dynamic> user = {"id": 1, "username": "zara"};

  // key 연산은 인덱스 연산자를 활용한다.
  print(user["id"]);
  print(user["username"]);

  // set 리터럴은 중괄호
  Set<int> lotto = {};
  Random r = Random();
  // 0 ~ 45번까지의 난수

  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);

  // 반드시 6개 보장하도록 출력
  while (lotto.length <= 5) {
    lotto.add(r.nextInt(45) + 1);
  }
  print(lotto);

  // set --> list 변경 하고자 한다면
  print(lotto.toList());
  List<int> lottoList = lotto.toList();
  // Set 자료 구조에 정렬이라는 기본이 없기에
  lottoList.sort();
  print(lottoList);
}
