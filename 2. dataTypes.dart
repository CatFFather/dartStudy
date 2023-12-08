void main() {
  // 0. Basic Data Types
  String name = 'Jayden';
  bool alive = true;
  int age = 10;
  double money = 99.12;
  // num은 int, double를 둘 다 사용 가능(num가 둘 의 부모 class임)
  num x = 12;
  x = 1.1;
  // 1. Lists
  var test = [
    1,
    'test',
    {"name": 'FAKER', "age": 30}
  ];
  var numbers = [
    111,
    2,
    3,
    4,
    5,
    'test',
  ];
  List numbers2 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];
  List<int> numbers3 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    0,
  ]; // int로 선언하면 숫자만 추가 가능 class 안에서만 타입을 정하고 나머지는 var 사용
  numbers3.add(444);
  print('numbers ${numbers}');
  print('numbers2 ${numbers2}');
  print('numbers3 ${numbers3}');
  print('numbers.first ${numbers.first}');
  print('numbers.last ${numbers.last}');
  // collection if
  var giveMeFive = true;
  var listItem = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  // 주석과 같은 기능
  // if(giveMeFive){
  //   listItem.add(5);
  // }
  print('listItem:${listItem}');

  // 2. String Interpolation
  var name2 = 'nico';
  var age2 = 20;
  var greeting =
      "Hello everyone, my name is $name2 and I'm ${age2 + 2}"; // $에 변수를 넣어주면 String에 데이터를 바로 입력 가능하고 ${}를 사용하면 계산까지 가능함(js의 Template literals 처럼 사용 )
  print(greeting);

  // 3. Collection For
  var oldFriends = ['Jayden', 'Nico'];
  var newFriends = [
    'Rosa',
    'Ralph',
    'Darren',
    for (var friend in oldFriends) '💖 ${friend}',
  ];
  print(newFriends);
  // collection if , Collection For 는 UI 만들 때 좋음 특히 collection if 좋음 (메뉴나 navigation bar를 만들 때 user가 로그인 했는지 안했는지 나타내는 버튼을 추가 할 때)

  // 4. Maps
  // var는 컴파일러가 알아서 key value의 자료형을 유추해줌
  var player = {
    'name': 'Jayden',
    'xp': 19.99,
    'superpower': false,
  };
  print('player: ${player}');

  // key가 int , value 가 bool로 지정된 Map
  Map<int, bool> player2 = {
    1: true,
    2: false,
  };
  print('player2: ${player2}');

  // 이런식으로도 가능함
  Map<List<int>, bool> player3 = {
    [1, 2, 3, 4, 5]: true,
  };
  // 리스트 안에 Map
  List<Map<String, Object>> player4 = [
    {'name': 'nico', 'xp': 19999.99},
    {'name': 'rosa', 'xp': 123.111},
    {'name': 'jayden', 'xp': 222.188},
  ];
  print('player4 : ${player4}');
  for (var player in player4) {
    print('player info : ${player}');
  }
  // key와 value를 가지는 구조로 object를 만들 때, 그리고 그것들이 특정 형태를 가질 때, API로 얻은 데이터는 class를 사용하는게 좋음

  // 5. Sets
  var setsNumbers = {1, 2, 3, 4};
  Set<int> setsNumbers2 = {1, 2, 3, 4};
  // Set과 List의 차이점은 Set에 속한 모든 아이템들은 유니크함
  setsNumbers.add(1);
  setsNumbers.add(1);
  setsNumbers.add(1);
  setsNumbers.add(1);
  setsNumbers.add(10);
  print('setsNumbers : ${setsNumbers}');
  // 아무리 1을 많이 추가해도 1은 하나밖에 없음 Set은 sequence(순서)가 있음 List와 같지만 모든 요소가 유니크해야함
}
