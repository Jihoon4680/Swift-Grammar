import UIKit
/* optional
var optionalValueTest : Int? = 100

func optionalFunction(_ optionals : Any? ){ //  +++  _ 를 사용해서 매개변수 이름 없이 사용 가능! .
    
    print(optionals)
}
func optionalFunctionTwo(optionals : Int){
    //var result : Int = optionals
    //result -= 1
    
   print(optionals)
}

optionalFunction(optionalValueTest) // Optional(100) // ++++ 옵셔널 추출을 하지 않아서 optional이 감싸진 상태로 나온다.
optionalFunctionTwo(optionals: 30) // 30
optionalFunction(nil) // nil

// optionalFunctionTwo(optionals: nil) // 런타임오류 // Int타입의 매개변수에 nil 을 입력 ( 값이 없는 것을 매개변수로 입력.  )

// 암시적 : ! 사용  //
var implicitlyOptionalValue : Int! = 100

switch implicitlyOptionalValue {
case .none:
    print(" This is OptionalValue ")
case .some:
    print(" value ")
}
implicitlyOptionalValue = implicitlyOptionalValue + 1 // 101 // 기존변수처럼 사용 가능
implicitlyOptionalValue = nil // nil 할당가능
//implicitlyOptionalValue = implicitlyOptionalValue + 1 // 오류 nil과 1 연산 불가능

// ? 를 이용한 옵셔널표현
var optionalValue : Int? = 100

switch optionalValue{
case .none:
    print(" This is OptionalValue ")
case .some:
    print(" value ")
}

//optionalValue = optionalValue + 1 // 옵셔널 타입에 Int값 연산 불가능
optionalValue = nil



// ?,!는 띄어서 쓰면 안된다. (옵셔널)
// 어떤타입이든 옵셔널이 붙으면 다른 타입이다.
// 매개변수를 입력받아 매개변수를 변경하는것은 안된다. 사용하려면 새로운 변수나 상수를 선언해줘야하는 것 같다.
/*
 func optionalFunctionTwo(optionals : Int){
    optionals -= 1  // 이렇게 사용이 안됨
    print(optionals)
 }
 */
// 명시적 사용(!) 경우 :  옵셔널타입(nil)이 아닌 다른 타입이 들어온경우. 옵셔널 타입이 아닌경우에 알아서 연산가능
// 일반적 표현 (?) : 옵셔널타입(nil)값이 아닌 어떠한 데이터타입도 할당 불가능.
// 강제적 추출(!) 은 조심하라하는데. 여기서는 선언하는 경우의 사용이라 다른건가.


*/

func printName(_ name: String) {
    print(name)
}
/*
var myName: String? = nil

//printName(myName) // 컴파일 오류 // 전달되는 값의 타입이 optional타입

// 옵셔널 바인딩.
if let name: String = myName { // nil이 아니라면 optional안의 값을 추출
    printName(name)
} else {                       // nil이라면
    print("myName == nil")     // * myName == nil 출력
}

var optionalValue : Int? = 3
print(optionalValue) // Optional(3)
// +++ 추가
if let integers: Int = optionalValue { // nil이 아니라면 optional안의 값을 추출
    print(integers)
} else {                       // nil이라면
    print("optionalValue == nil")
}                                   // * 3 출력


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil") // yourname == nil 출력.
}
// name 상수는 if-let 구문 내에서만 사용가능
// printName(name)// 상수 사용 범위 벗어남




// ',' 를 사용 하여 여러개 옵셔널 바인딩
// 모든 옵셔널에 값이 있을 때만 동작
myName = "jihoon"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}else {
    print(" they have optionalValue") // nil이 하나라도 있다면 .
}

yourName = "boost"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")   // jihoon and boost 출력
}

*/
var myName: String? = "jihoon"
var yourName: String! = nil


printName(myName!) // jihoon

myName = nil

print(myName!) // 런타임오류 // 값이 없음.

yourName = nil

//printName(yourName) // 런타임오류 // 값이 있음.

// ++ 런타임오류와 컴파일 오류의 차이점.??
// 옵셔널 타입에 대한 주의가 필요 할 것 같다.
// 강제추출을 하게되어 런타임 오류가 발생 가능성이 있어서 '지양'해야됨
// 암시적 옵셔널표현(!)은 표현 할 때도 nil의 가능성을 열어두고 표현
// 따라서 nil이 있을 경우 런타임 오류는 피할 수 없다.
