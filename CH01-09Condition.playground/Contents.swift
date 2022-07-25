import UIKit

/*
 if 조건 {
 실행구문
 } else if 조건{
 실행구문
 } else if 조건{
 실행구문
 }else {
 실행구문
 }
 */
var integers:Int = 100

if integers==100 { // if (condition==100) 도 가능 ()는 선택.
    print("100입니다.")
} else if integers < 100 {
    print("100미만입니다.")
} else {
    print("100이상입니다.")
} //condition == 100 이므로 "100입니다" 출력.

/*
 switch 비교값
 case 패턴:
 실행구문
 case 패턴:
 실행구문
 default:
 실행구문.
*/

switch integers{
case 100..<Int.max: // ..을 사용하여 100부터 Int.Max(인트형의 최대값)까지의 범위의 조건으로 만듦
    print("100보다 큽니다")
case 100:
    print("100")
case 1..<100:
    print("1보다 크고 100보다 작습니다. ")
default:
    print("unknown")
} // 100

var stringType : String = "key"

switch stringType { // String타입도 지원 가능.
case "value":
    print("it is value")
case "key": // case "value", "key": //  it is key 출력 // ++ key or value 이면 실행
    print("it is key")
case "String":
    print("it is String")
    //fallthrough  // 사용 시 i don't know까지 출력
default:
    print("i don't know")

} // it is String
