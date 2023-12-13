// 0. Your First Dart Class
// Class를 생성할 때는 타입을 꼭 명시해줘야함.
import 'dart:ffi';

class Player {
  final String name = 'Jayend';
  int xp = 1500;
  void sayHello() {
    print("Hi my name is ${name}"); // this.name 말고 그냥 name쓰면 됨 (this 써도 되긴함)
  }
}

// 1. Constructors
// late를 이용하여 생성자 받기
class LatePlayer {
  late final String name;
  late int xp;
  // 생성자는 클레스 이름과 동일하게 사용
  LatePlayer(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
  void sayHello() {
    print("Hi my name is ${name}");
  }
}

// late 없이 가능
class NoneLatePlayer {
  final String name;
  int xp;
  // 생성자는 클레스 이름과 동일하게 사용
  NoneLatePlayer(this.name, this.xp);
  void sayHello() {
    print("Hi my name is ${name}");
  }
}

// 2. Named Constructor Parameters
class namedParametersPlayer {
  final String name;
  int xp, age;
  String team;
  // 생성자는 클레스 이름과 동일하게 사용
  namedParametersPlayer({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
  void sayHello() {
    print("Hi my name is ${name}");
  }
}

// 3. Named Constructors(이 방식을 익혀놔야 Flutter에서 편히 사용 가능)
class NamedPlayer {
  final String name;
  int xp, age;
  String team;
  // 생성자는 클레스 이름과 동일하게 사용
  NamedPlayer({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
  // 콜론(:)을 사용하여 NamedPlayer 객체를 초기화 함
  NamedPlayer.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  NamedPlayer.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is ${name}");
  }
}

// 4. Recap
class ApiPlayer {
  final String name;
  int xp;
  String team;
  ApiPlayer.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];
  void sayHello() {
    print("Hi my name is ${name}! Here is in Api");
  }
}

// 5. Cascade Notation
class CNPlayer {
  String name;
  int xp;
  String team;

  CNPlayer({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is ${name}! Here is in CNPlayer");
  }
}

// 6. Enums
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class enumPlayer {
  String name;
  XPLevel xp;
  Team team;

  enumPlayer({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is ${name}! Here is in CNPlayer");
  }
}

// 7. Abstract Classes (flutter를 사용할 때 많이 사용 안함) 추상화 클래스는 특정 메소드를 구현하도록 강제
// 추상화 클래스는 이를 상속받는 모든 클래스가 가지고있어야 하는 공통된 속성, 메소드를 정의
abstract class Human {
  void walk();
}

class ACPlayer extends Human {
  String name;
  XPLevel xp;
  Team team;
  ACPlayer({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('im wlaking');
  }

  void sayHello() {
    print("Hi my name is ${name}! Here is in ACPlayer");
  }
}

class Coach extends Human {
  late String name;
  void walk() {
    print('the coach is wlaking');
  }
}

// 8. Inheritance
class Human8 {
  final String name;
  Human8({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team8 { blue, red }

class Player8 extends Human8 {
  final Team team;
  Player8({
    required this.team,
    required String name,
  }) : super(name: name); // super를 이용하여 확장을 한 부모 클래스와 상호작용할 수 있게 해줌

  @override
  void sayHello() {
    super.sayHello(); // super를 이용하여 부모 클레스 메소드 호출
    print('and I play for ${team}');
  }
}

// 9. Mixins --> 생성자가 없는 클래스, 여러 클래스에 재사용이 가능한 장점이 있음(Flutter에서 많이 사용함)
// Mixin의 조건은 생성자가 없는 클래스여야 함
mixin class Strong {
  final double strenghtLevel = 1500.99;
}

mixin class QuickRunner {
  void runQuick() {
    print('ruuuuuuuun!');
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team9 { blue, red }

class Player9 with Strong, QuickRunner, Tall {
  final Team team;
  Player9({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  // 0. Your First Dart Class
  var player = Player();
  print('player name : ${player.name}');
  // player.name ='Nico'; final 이라서 수정이 불가능
  player.sayHello();

  // 1. Constructors
  var player2 = LatePlayer('Nico', 3000);
  player2.sayHello();
  var player3 = NoneLatePlayer('Rosa', 9999);
  player3.sayHello();
  // 2. Named Constructor Parameters (함수에서 한거랑 동일한 방식)
  var player4 = namedParametersPlayer(
    name: 'Faker',
    xp: 30,
    team: 'blue',
    age: 26,
  );
  player4.sayHello();

  // 3. Named Constructors(이 방식을 익혀놔야 Flutter에서 편히 사용 가능)
  // named 형식
  var blueplayer = NamedPlayer.createBluePlayer(
    name: 'Faker',
    age: 26,
  );
  // positional 형식
  var redplayer = NamedPlayer.createRedPlayer('CatFFather', 30);

  // 4. Recap
  var apiData = [
    {
      "name": "Jayden",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Rosa",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Faker",
      "team": "red",
      "xp": 0,
    }
  ];
  apiData.forEach((playerJson) {
    var player = ApiPlayer.fromJson(playerJson);
    player.sayHello();
  });

  // 5. Cascade Notation(..을 이용하여 이런식으로 표현이 가능 )
  var nico = CNPlayer(name: 'nico', xp: 1200, team: 'red') // 여기 ;을 빼야함
    ..name = 'las'
    ..xp = 120000
    ..team = 'blue';
  print(nico.name);
  // 선언하고 직후만 사용가능한게 아니고 아래와 같이도 사용가능
  var faker = nico
    ..name = 'faker'
    ..xp = 1000
    ..team = 'red'
    ..sayHello();
  print(faker.name);

  // 6. Enums --> 자주 쓰게 될 것 (개발자들이 실수하지 않게끔 도와줌)
  var dalkong = enumPlayer(name: 'nico', xp: XPLevel.medium, team: Team.red)
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue;
  print(dalkong.team);

  // 7. Abstract Classes

  // 8. Inheritance
  var player8 = Player8(team: Team.red, name: 'Faker');
  print('@@@@@@@@@@');
  print(player8.name);
  print(player8.team);
  player8.sayHello();

  // 9. Mixins
  var player9 = Player9(team: Team.blue);
  player9.runQuick();
}
