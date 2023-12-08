// 모든 코드는 main 에서 시작 하기 때문에 main을 항상 선언 해야함.
void main(){
  // 0. hello world
  print('hello world!!!'); // line 끝에는 항상 ;(세미콜론)이 있어야함. dart는 자동으로 ;를 표기해주지 않아서 직접 달아야함. ;을 안쓰는 경우도 있기 때문임
  
  // 1. 변수 선언 var
  var name0 = 'Jayden';
  // ※ var는 업데이트 가능하지만 변수의 본래 타입과 일치해야함.
  name0 = 'Lee';
  String name1 = 'Roas'; // 직접 타입을 선언 할 수 있음.
  // 관습적으로 함수나 메소드 내부에 지역 변수를 선언할 때 var 사용
  // Class에서 변수나 property를 선언할 때는 타입을 지정

  // 2. dynamic 
  // dynamic은 여러가지 타입을 가질 수 있는 변수에 쓰는 키워드 권장하지는 않지만 때때로 유용함
  // (1) 변수가 어떤 타입일지 알기 어려운 경우 
  var name2; // 최초 선언 시 아무 값이 없을 때 dynamic 으로 선언됨 또는 dynamic 으로 선언 가능
  name2 = 'wow';
  name2 = 33;
  name2 = false;
  dynamic dyTest;
  // 만약 서버에서 받은 데이터가 무슨 타입인지 모르면 dynamic으로 선언 후 if문을 이용하여 타입 확인
  if(dyTest is String){
    // dyTest.
  }
  if(dyTest is int){
    // dyTest.
  }
  // dynamic은 정말 필요할때만 사용하자!

  // 3. null
  // String nico = 'nico';
  // nico = null; // 이건 불가능함 nico는 String 임
  String? nico = 'nico'; // ?만 넣어주면 null 이 가능함
  nico = null ;
  nico?.isNotEmpty;
  print('nico?.isNotEmpty ${nico?.isNotEmpty}');
  print('nico.length:${nico?.length}???');
  // dart의 변수는 기본적으로 nullable이 아니다 그래서 ?를 넣어줘야함

  // 4. final 
  final name4 = 'Jaden'; 
  // name5 = 'nico'; // final은 수정할 수 없음 (JS const와 같음)
  final String name44 = 'String Type'; // 타입을 설정 할 수 있음.

  // 5. late 
  // late는 final 이나 var앞에 사용 초기 데이터 없이 변수를 선언할 수 있게 해줌
  late final String name5;
  // do something, go to api //(api 사용시 많이 사용하게 될꺼임)
  name5 = 'nico'; // API로 받은 데이터를 변수에 넣어줌
  // name5 = 'test', final인데 위에서 선언 해서 못함
  print(name5); // 값을 넣기 전에는 접근 불가

  // 6. const
  // const는 컴파일 할 때 알고있는 값에 사용해야함
  // 앱스토어에 앱을 올리기 전에 알고 있는 값이고 어떤 값인지 모르고, 그값이 API로 부터 온다거나 사용자가 화면에서 입력해야 하는 값이라면 var, || final이 되어야 함
  const APIKEY = '1234asdf135135vdlkve';
  const max_allowed_price=120; // 앱에서 사용할 상수들이 있다면 이렇게 const를 쓰면됨 (컴파일 때 평가 됨 앱에 담긴 코드를 앱스토어에 보내기 전)

  // 7. recap
  // dart는 var를 많이 사용하는 것을 권장
  // type을 사용하는 방식은 class의 property를 작성할 때 사용하도록 권장
  // 메소드나 작은 함수 안에서 지역 변수를 선언할 때는 var를 사용하는게 좋음 어차피 컴파일러가 변수의 타입을 추론함
  
  // final을 딱 한 번만 할당이 가능

  // dynamic은 막 쓰면 안됨

  // const는 우리가 컴파일 할때 값을 알고 있는 변수를 만드는 방법
  // api key 같은게 있음 앱을 컴파일하고 앱스토어에 올릴 때 그 값을 알고 있다면 const를 사용함. const는 compile-time 상수임
  // final과 차이점은 final은 런타임 중에 만들어질 수 있음 --> 사용자가 앱을 실행하면서 변수를 만들 수 있음
  // const는 코드를 컴파일 하기 전에 알고있어야 함.

  // null safety 
  // null 값을 참조하지 못하게 해줌 
  // 기본적으로 dart의 모든 변수는 nullable이 아님(null이 될 수 없음)

  // late 
  // late는 final, var, String 같은 것들 앞에 써줄 수 있는 수식어.
  // late는 dart한테 아직은 어떤 데이터가 올지 모른다고 말해줌
  // late는 flutter로 API에서 데이터를 가져오는 일을 할 때 합리적 정의해주고 싶은 무언가가 있는데 데이터가 아직 없을 때 
}