import UIKit

/*선언
 func 함수이름(매개변수이름 : 매개변수타입, 매개변수이름 : 매개변수타입 ...)-> 반환타입 {
  //함수 구현부
 return 반환값  // (반환값은 반환타입에 맞게)
 
 */

func sum(one : Int, two : Int)-> Int{
    var result : Int = one + two
    return result
}

/* 반환값이 없는 함수
 func 함수이름(매개변수이름 : 매개변수타입, 매개변수이름 : 매개변수타입) -> Void {
    //함수 구현부
    return
 }
 */

func printName(me : String, friends : String)-> Void{ //
    print("I'm \(me), Hi \(friends)")
}

/* 반환타입생략
func printName(me : String, friends : String){ // ->Void 생략
     print("I'm \(me), Hi \(friends)")
}
 */

/* 매개변수가 없는 함수
 func 함수이름()->반환타입 {
   // 함수구현부
    return 반환값
 }
 */
var num : Int = 30

func showInt()-> Int{
    
    return num
}

/* 매개변수,반환값 없는 함수
 func 함수이름() { // ->Void 생략.
 //함수구현부
 return
 }
*/

func nonePrintName(){
    print("trevor")
}

sum(one: 3, two: 5) // 8
printName(me: "trevor", friends: "myoung") // I'm trevor, Hi myoung
showInt() //30
nonePrintName() // trevor


func sendMeessage( me : String, hi : String = "hello") {
    print("\(hi) my name is \(me)")
}
sendMeessage(me: "jihoon", hi: "hi~~") //hi~~ my name is jihoon
sendMeessage(me: "jihoon") // hello my name is jihoon // 기본값을 가지는 hi 변수 생략가능

/* 전달인자레이블
 func 함수이름(전달인자레이블 매개변수이름 : 매개변수타입, 전달인자레이블 매개변수이름2: 매개변수타입2 ....)-> 반환타입{
 //함수구현부
 return 반환값
 */

func sendMessage(to friend : String, from me : String) -> String{
    let messageReturn : String = "hello \(friend), i'm \(me)"
    print(messageReturn)
    return messageReturn
}
func sendMessage(friendTest friend : String,  me : String) -> String{
    let messageReturn : String = "hello \(friend), i'm \(me)"
    print(messageReturn)
    return messageReturn
}
sendMessage(to: "boostCamp", from: "Jihoon") // "hello boostCamp, i'm Jihoon"
sendMessage(friendTest: "mommy", me: "son")
/*
func 함수이름( 매개변수이름 : 매개변수타입, 매개변수이름2 : 매개변수타입2 ...)->반환타입 {
 //함수구현부
 return 반환값
 }
 */

func helloFriends(me : String, friends: String...) {
    print("hello \(friends) i'm \(me)")
}

helloFriends(me: "jihoon", friends: "eric","ethen","mac") // hello ["eric", "ethen", "mac"] i'm jihoon


// 가변매개변수와 매개변수는 타입이 다르다 = 상호작용이 되지않는다.
// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급객체 이게 무슨 말일까?

// 데이터로서 함수표현
//(매개변수1타입, 매개변수2타입 ...) -> 반환타입
var someFunction : (String,String)->String = sendMessage(to:from:) // ++반환타입이 맞아야함.
someFunction("Macbook","ios") // "hello Macbook, i'm ios"

someFunction = sendMessage(friendTest:me:)
someFunction("karl","jihoon") //"hello mom, i'm adult"

// someFunction = helloFriends(me:friends:) // 매개변수의 타입이 다르다 // ++가변매개변수타입와 매개변수는 타입은 다르다.

func differFunc(function:(String,String)->String){
    function("jihoon","mac")
    
}

differFunc(function: sendMessage(friendTest:me:)) // hello, i'm mac
differFunc(function: sendMessage(to:from:)) // // hello, i'm mac

