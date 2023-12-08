// 0. Defining a Function
// void는 이 함수가 아무것도 return 하지 않는다는 의미
void sayHelloVoid(String name) {
  print("Hello ${name} nice to meet you!");
}

// 만약 return 하고 싶으면
String sayHelloString(String name) {
  return "Hello ${name} nice to meet you!";
}

// fat arrow syntax (코드가 한 줄 일 때)
String sayHelloArrow(String name) => "Hello ${name} nice to meet you!";
num plus(num a, num b) => a + b;

// API call
String apiCall(String name) {
  // call api
  // perform cal // 이러한 경우는 못줄여씀
  return "Hello ${name} nice to meet you!";
}

Map getMyInfo() {
  var myInfo = {'name': 'Lee', 'age': 30};
  return myInfo;
}

// 1. Named Parameters
// 파라미터를 이렇게 하나씩 받으면 한두개는 괜찮은데 많이 받으면 호출할 때 순서도 신경써야하고 뭐가 뭔지 잘 모름
String noneNamedParameters(String name, int age, String country) {
  return 'Hello ${name}, you are ${age}, and you come from ${country}';
}

String namedParameters(
    {required String name, int? age, String country = 'korea'}) {
  // null safety에 걸리지 않으려면 기본값을 정해주거나 ? 로 처리해줌 또는 required 가 있으면 필수로 있어야 함
  return 'Hello ${name}, you are ${age}, and you come from ${country}';
}

// 3. Optional Positional Parameters
// country가 필수가 아닌값으로 설정 (사실 자주 사용하는 방법은 아님)
String OptionalPositionalParameters(String name, int age,
    [String? country = 'KKKKKKKK']) {
  return 'OptionalPositionalParameters Hello ${name}, you are ${age}, and you come from ${country}';
}

// 4. QQ Operator(JS의 || 와 같은 기능임 --> left ?? right left가 null이면 오른쪽을 리턴해줌)
String? capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';
// String? capitalizeName(String? name) => name!=null ? name.toUpperCase() : 'ANON'; // 이렇게 삼항 연산자로 할 수도 있음

// 5. Typedef(자료형에 원하는 alias를 붙일 수 있게 해줌)
typedef ListOfInts = List<int>;
typedef UserInfo = Map<String, String>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(getMyInfo());
  // 0. Defining a Function
  sayHelloVoid('Jayden');
  var text = sayHelloString('Rosa');
  print(text);
  var arrow = sayHelloArrow('LEE');
  print(arrow);
  print(plus(10, 35));

  // 1. Named Parameters
  print(noneNamedParameters('nico', 19, 'cuba'));
  print(namedParameters(
    age: 12,
    country: 'korea',
    name: 'jayden',
  ));

  // 2. Recap
  // positional parameter는 순서를 잘 지켜서 보내야함(사용할 때 각각의 위치를 기억해야함)
  // 해당 function이 같은 파일 내에 있지 않을 때 파악하기 어려움
  // positional parameter는 둘 이하일 때는 괜찮음 셋 부터 좀 복잡한 느낌 셋 부터는 Named Parameters를 쓰자
  // Named Parameters를 사용할 때는 null 처리를 잘 해주자!!(required, default, ?)

  // 3. Optional Positional Parameters
  var results =
      OptionalPositionalParameters('nico', 12); // country를 입력하지 않아도 오류 발생하지 않음
  print(results);

  // 4. QQ Operator
  // 4-1
  print(capitalizeName('nico'));
  print(capitalizeName(null));
  // 4-2 QQ equals ??= 해당 값이 null이면 값을 넣어준다.
  String? name4;
  name4 ??= 'Jayden';
  name4 ??= 'Another!!!';
  print(name4);

  // 5. Typedef
  print(reverseListOfNumbers([1, 2, 3]));
  print(sayHi({'name': 'Jayden'}));
}
