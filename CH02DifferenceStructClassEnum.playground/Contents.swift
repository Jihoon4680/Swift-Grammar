import UIKit

class SampleClass{
    var classValue : Int = 0
}
struct SampleStruct{
    var structValue : Int = 10
}

//구조체 : 값 타입
var firstStruct:SampleStruct = SampleStruct()
var secondeStruct:SampleStruct = firstStruct
// 값타입 이기때문에 할당이 끝나고 난 뒤에 첫번째 인스턴스 값을 변경을 해도
// 두번쨰 인스턴스의 프로퍼티에 영향을 주지 않음.
firstStruct.structValue = 1 // 1
print(secondeStruct.structValue) // 10.



//클래스 : 참조타입
// case 1 : 두번째 인스턴스에 첫번쨰 인스턴스를 할당
//첫번째 가변 인스턴스
var firstInstance:SampleClass = SampleClass()
// 두번쨰 가변 인스턴스
var secondeInstance:SampleClass = firstInstance

// 값이 변경
print(secondeInstance.classValue) // 0
firstInstance.classValue = 5 //5
print(secondeInstance.classValue) // 5



//클래스 : 참조타입
// case 2 : 첫번째 인스턴스가 아니라. 동일 클래스 할당
//첫번째 가변 인스턴스
var firstInstance2:SampleClass = SampleClass()
// 두번쨰 가변 인스턴스
var secondeInstance2:SampleClass = SampleClass()
// 각각 동일 class 할당
// 첫번째 인스턴스 값을 변경해도
// 두번째 인스턴스 값이 변경 되지 않음
print(firstInstance2.classValue) // 0
firstInstance2.classValue = 5 //5
print(secondeInstance2.classValue) // 0
var thirdInstance2:SampleClass = SampleClass()
print(thirdInstance2.classValue) // 0

첫번째 메모리 위치를 할당
두번쨰 메모리 위치를 할당



