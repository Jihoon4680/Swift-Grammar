import UIKit

/* 기본형태
 enum 열거형이름{ // UpperCamelCase 표현
 case 이름1
 case 이름2
 case 이름3, 이름4, 이름5
 ...
 }
 */
enum WeekName{  //switch 와 다른게 case뒤에 ':' 붙이지 않는다.
    case mon
    case tue
    case wed, thu, fri
    case sat, sun
}

    
// 열거형타입과 케이스 이름 모두 가능
var day :WeekName = WeekName.mon //mon
//타입이 명확 -> 축약가능
day = .fri // fri

switch day {
case .mon:
    print("월요일")
case .tue:
    print("화요일")
case WeekName.wed:
    print("수요일")
case .thu:
    print("목요일")
case .fri:
    print("금요일")
case .sat, .sun:
    print("주말입니다.")
    // 열거형 중 하나라도 사용이 되지 않으면 default: 를 지정해줘야함
}

// 원시값(rawValue)을 가지는 열거형
enum Fruit: Double{
    case apple = 3
    case grape = 6
    case banana
    // case mango = 1 // 컴파일 오류 // 같은 열거형에 같은 원시값을 가질 수 없다.
}

print("Apple rawValue = \(Fruit.apple.rawValue)") // Apple rawValue = 1

enum Cafe : String {

    case americano = "아메리카노"
    case cafeLatte = "카페라뗴"
    case cappuccino = "카푸치노"
    case coffee
}

print("Americano rawValue = \(Cafe.americano.rawValue)")
// 원시값을 지정하지 않으면 case이름이 출력된다.
print("unknown rawValue = \(Cafe.coffee.rawValue)")
// Int타입 열거형 중 원시값 지정하지 않은 case의 이름
// 바로 위의 case이름의 원시값 다음 숫자가 입력된다.
print("unknown IntType rawValue = \(Fruit.banana.rawValue)")

// rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입
// 초기화한 rawValue값(4)이 해당되지 않을 수 있음
// let apple:Fruit = Fruit(rawValue: 4)
let apple:Fruit? = Fruit(rawValue: 3) //3인 apple로 초기화


//if let 구문을 사용하여 바로 케이스 바로 실행
if let lemon:Fruit = Fruit(rawValue: 5){
    print("5에 해당하는 값은 lemon")
}else{
        print("rawvalue 5에 해당하는 값이 없습니다.")
}

// 함수 포함 열거형
enum addEnumFunction{
    
    case one,two, three
    case four, five, six
    case seven, eight, nine
    
    func printMessage(){
        switch self{
        case .one,.two,.three:
            print("1 or 2 or 3")
        case .four, .five, .six:
            print("4 or 5 or 6")
        case .seven, .eight, .nine
            print("7 or 8 or 9")
        }
    }
}

addEnumFunction.eight.printMessage() // 7 or 8 or 9






