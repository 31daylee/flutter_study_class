void main() {
  // 반복문
  var list = [1, 2, 3, 4];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // list -> map() 함수가 있다.
  // map -> 반복되는 값을 하나씩 변형하기 위해 사용한다.
  var sushi = ['새우초밥', '연어초밥', '광어초밥'];
  var sushiChange = sushi.map((i) => '간장' + i);
  print(sushiChange);
  print(sushiChange.runtimeType);
  print(sushiChange.toList());
  print(sushiChange.runtimeType);

  // where 연산자
  //반복되는 값에서 필요 없는 값을 필터링 하거나, 필요한 값을 찾을 때 사용 한다.
  var sushiChange2 = sushi.where((i) => i != '광어초밥');
  print(sushiChange2.toList());
}
