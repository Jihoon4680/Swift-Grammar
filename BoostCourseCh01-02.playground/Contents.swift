import Swift

let someInteger = 100


// ** 스위프트에서 조건부는 꼭 불타입!!! 데어터 타입 일치 중요.
//MARK: - if-else // 조건부분의 소괄호는 선택 사항. 중괄호는 필수.
//if 조건부 {
//   구현부
//} else if 조건부 {
//    구현부
//} else {
//    구현부
//}
/*
 if {}
 if {} else if{}
 if {} else{}
 모두 사용 가능
 */
if someInteger < 100{
    print("100 미만")
}else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100
// 스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다
//if someInteger { }
//MARK: - switch
//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}
//defualt 값이 명확하지 않는 한 defalut 코드 필수 ///////
// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100
// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "yagom" {
case "jake":
    print("jake")
    //fallthrough 사용 시 jake or mina 의 조건이 성립한다. /////
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!


var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

//MARK: - for-in
//for <#item#> in <#items#> {
//    <#code#>
//}
for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다 // item은 key,value로 구성된 튜플타입.
//튜플 : 다양한 값들의 묶음. /////////////
// var 변수명 : (데이터 타입1, 데이터 타입2, 데이터 타입3) = ( 값1 , 값2 , 값3)


for (name, age) in people {
    print("\(name): \(age)")
}



// while문
//while <#condition#> {
//    <#code#>
//}
while integers.count > 1 {
    integers.removeLast()
}


// repeat-while문 ( do while문과 비슷하다. )
//repeat {
//    <#code#>
//} while <#condition#>
repeat {
    integers.removeLast()
} while integers.count > 0

 

// 옵셔널
/* 값이 있을수도 있고 없을 수도 있다.
 nil이 할당 될 수 있는지 없는지 표현.
 nil = 값이 없다. 타 언어 NULL과 유사
 사용 이유
    - 명시적 사용: 코드 만으로 nil가능성 표현 - 주석,시간 절약
    - 안전한 사용: 전달 받은 값이 옵셔널이 아니라면 nil체크 안하고 사용
                예외상황 최소화
                효율적 코딩*/

// Implicitly Unwrapped Optional 암시적 옵셔널 : !이용한 암시적 옵셔널
// 값이 있을거라고 생각하고 선언 따라서 변수처럼 사용 & nil 할당 가능
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none: // 값이 없을 떄
    print("This Optional variable is nil")
case .some(let value): // 값이 있을 때
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생 // 왜?? nil로 변경 된 값에 Int형 변수를 연산했기 때문에.
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

//MARK:- ?로 선언한 옵셔널
// Optional
var optionalValue: Int? = 100

switch optionalValue {
case .none: // 값이 없을 떄
    print("This Optional variable is nil")
case .some(let value): // 값이 있을 떄
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1
// 여기도 타입의 중요성에 대한 연속이다.
let string12 : Character = 'A'
