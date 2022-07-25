import UIKit

/* struct 구조체이름{
 //구현부
}
 */

struct TestStruct{ // upperCamelCase : 대문자로 시작하는 카멜케이스 , 단어로 끊어 대문자로 시작
 
    var mutableProperty : Int = 100 // 가변 프로퍼티
    
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    // 'static'키워드 사용 : 타입자체가 사용하는 프로퍼티 --> 인스턴스로 활용불가.
    static var typeProperty : Int = 100 // 타입 프로퍼티
    
    
    
        
    func intanceMethod(){
        print(mutableProperty)
        print(immutableProperty)
    }
    static func typeMethod(){
        
        print("static type Method")
    }
}
//가변 인스턴스 생성
var mutableInstance : TestStruct = TestStruct()

mutableInstance.mutableProperty = 200 // 200
// mutableInstance.immutableProperty = 200 // 불변프로퍼티에 값을 변경
// mutableInstance.typeProperty = 100 // 타입프로퍼티 사용 불가.
// mutableInstance.typeMethod() // 타입 메서드 사용 불가

//불변 인스턴스 생성
let immutableInstance : TestStruct = TestStruct()

// immutableInstance.mutableProperty = 300 // 컴파일오류 // 불변인스턴스는 가변 프로퍼티라해도 변경불가.
// immutableInstance.immutableProperty = 300 // 컴파일오류 // 불변인스턴스 + 불변 프로퍼티

TestStruct.typeProperty = 300 // 300
TestStruct.typeMethod() // static type Method

//학생 구조체

struct Student{
    
    var name: String = "jihoon"
    // ``으로 키워드를 이름으로 사용 +++ ''(작은따옴표)와 헷갈림 주의
    var `class`: String = "Swift"
    
    func selfIntroduce(){
        //++++class 키워드 사용 시 .을 붙여 구조체의 class를 사용 할 것을 명시
        print("\(name)의 반은 \(self.class)")
    }
    

    
}

//가변 인스턴스 생성
var mutableTest : Student = Student()
mutableTest.name = " mac " // string
mutableTest.class = " book " // course

mutableTest.selfIntroduce() //  mac 의 반은  book

//불변 인스턴스 생성
let immutableTest: Student = Student()

//immutableTest.class = " immutable " // 불변인스턴스 변경불가 
//immutableTest.name = " not change" // 불변인스턴스 변경불가
immutableTest.selfIntroduce() // jihoon의 반은 Swift


