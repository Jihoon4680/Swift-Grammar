import UIKit



class Student{
    
    var student: String = "jihoon"
    
    var `class`:String = "Swift"
    
    func instanceMethod(){
        print("\(student)의 반은 \(self.class)")
    }
    
}

var studentInstance:Student = Student()

studentInstance.student = "ahn"
studentInstance.instanceMethod()




class Test{
    // 가변 프로퍼티
    var mutableValue: Int = 1003
    // 불변 프로퍼티
    let immutableValue: Int = 100
    // 타입 프로퍼티
    static var typeProperty : Int = 100
    //인스턴스 메서드
    func printName(){
        print("instanceMethod")
    }
    
    // 상속 재정의 불가 타입 메서드
    static func printStaticMethod(){
        print("redefine static Method")
    }
    // 상속 재정의 가능 타입 메서드
    class func printClassMethod(){
        print("redifineMethod")
    }

}
// 가변 인스턴스 - 참조정보 수정 가능
var sample:Test = Test()

sample.mutableValue = 300
// sample.immutableValue = 300 // 컴파일오류 // 인스턴스생성 후 수정불가
sample.printName()

// 불변 인스턴스 - 참조정보 수정 불가
let sampleImmutable:Test = Test()

// 불변인스턴스여도 인스턴스의 가변프로퍼티값을 변경 가능
sampleImmutable.mutableValue = 200 // 200 // sampleImmutable의 mutable
// Test의 값을 변경하는 것이 아님 (참조정보 변경불가)
var checkMutable:Test = Test()
print(checkMutable.mutableValue) // 100

// sampleImmutable.immutableValue = 200
sampleImmutable.printName()
//sampleImmutable.printStaticMethod() // 타입메서드 사용불가
// sampleImmutable.typeProperty // 타입프로퍼티 호출불가.


