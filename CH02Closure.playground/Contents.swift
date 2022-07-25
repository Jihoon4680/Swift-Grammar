import UIKit

/* 기본타입
 { (매개변수, 매개변수) -> 반환타입 in
    실행코드
 }
 */

// 함수
func sum (a : Int, b : Int)-> Int{
    return a + b
}
var sumResult : Int = sum(a: 1, b: 3) //4
//클로저 활용
// 상수에 클로저 할당
// 데이터타입으로서 함수 (Int,Int)-> Int
let closureSum : (Int,Int)-> Int =  { (a:Int, b: Int)-> Int in
    return a + b
}
//var result : Int = closureSum(2,3) //5

// 전달인자로서 클로저
let add : (Int,Int)->Int
add = {(a : Int, b: Int) -> Int in
    return a + b
}

let sub : (Int, Int) -> Int
sub = { (a : Int,b:Int)-> Int in
    return a - b
}

let divide : (Int, Int)->Int
divide = { (a: Int, b:Int)->Int in
    return a/b
}


var calculated : Int

calculated = calculate(a: 1,b: 2, method: add) // 3

calculated = calculate(a: 10, b: 4, method: sub) // 6

calculated = calculate(a: 20, b: 5, method: divide) // 4

// 따로 상수/변수에 클로저를 넣어 전달하지 않고
// 함수 호출시 클로저 사용
calculated = calculate(a: 20, b: 3, method: {(a:Int,b:Int)->Int in
    return a * b
})
print(calculated) // 60
 
var result : Int

//후행 클로저
result = calculate(a: 1, b: 2) {(a: Int , b: Int) -> Int in
    return a + b
}
print(result) // 3

// 반환타입 생략.
result = calculate(a:3,b:4, method:{(a:Int,b:Int) in
    return a-b
})
print(result) // -1
// 후행클로저 + 반환타입생략
result = calculate(a: 5,b: 6){(a:Int,b:Int) in
    return a*b
}
print(result) //30

//단축인자이름
result = calculate(a: 10, b: 2, method: {
    return $0 + $1
})
print(result) // 12
// 단축인자이름 + 후행클로저
result = calculate(a:10,b:23){
    return $0+$1
}
print(result) // 33

// 암시적 반환 표현
result = calculate(a: 20, b: 4){
    $0 + $1
}
print(result)//24

// 일반 클로저
result = calculate(a: 20, b: 3, method: {(a:Int,b:Int)->Int in
    return a * b
})

var result : Int = 0 // 초기화 시 '=' 뒤에는 항상 띄어써야함.
print(result) // 60
func calculate(a:Int, b:Int, method: (Int,Int)->Int)->Int{
    return method(a,b)
}
//클로저 축약
result = calculate(a: 20, b: 3){$0 * $1}
print(result) // 60
