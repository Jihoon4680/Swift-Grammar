import UIKit


class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("대학교에 갑니다.")
    }
}
// 인스턴스 생성
var jihoon: Person = Person()
var mac: Student = Student()
var boost: UniversityStudent = UniversityStudent()

//타입 확인
var result : Bool

result = jihoon is Person // true
result = jihoon is Student // false
result = jihoon is UniversityStudent // false

result = mac is Person //  true
result = mac is Student // true
result = mac is UniversityStudent // false

result = boost is Person //true
result = boost is Student //true
result = boost is UniversityStudent // true

// 활용
if(jihoon is UniversityStudent){
    print("jihoon은 universityStudent입니다.")
}else if( jihoon is Student){
    print("jihoon은 student입니다.")
}else if(jihoon is Person){
    print("jihoon은 person입니다.")
}
// jihoon은 person입니다.

switch boost {
case is Person:
    print("boost는 Person입니다")
case is Student:
    print("boost는 Student입니다")
case is UniversityStudent:
    print("boost는 UniversityStudent입니다")
default:
    print("boost는 사람도, 학생도, 대학생도 아닙니다")
} // boost는 Person입니다.
// boost는 Student를 상속받지만 재상속이 안되기때문에 Person은 될 수 없다.


//업 캐스팅
var mike: Person = UniversityStudent() as Person

var jenny: Student = Student()
//var jina: UniversityStudent = Person() as UniversityStudent // 컴파일 오류
// 인스턴스와 타입을 맞춰야됨 .

// UniversityStudent 인스턴스를 생성하여 Any 행세를 할 수 있도록 업 캐스팅
var jina: Any = Person() // as Any 생략가능

//다운캐스팅

// 조건부 다운캐스팅
var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent // nil
optionalCasted = jina as? UniversityStudent // nil
optionalCasted = jina as? Student // nil

// 강제 다운캐스팅
var forcedCasted: Student

forcedCasted = mike as! UniversityStudent
//forcedCasted = jenny as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! Student // 런타임 오류



func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        // 다시 옵셔널 언래핑을 해야되는 불편함 발생
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: mike as Person) // 대학교에 갑니다.
doSomethingWithSwitch(someone: mike) // 대학교에 갑니다.
doSomethingWithSwitch(someone: jenny) // 등교를 합니다
doSomethingWithSwitch(someone: jihoon) // 숨을 쉽니다

// if let을 사용하면 옵셔널 언래핑을 하지 않아도 됨.
func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

doSomething(someone: mike as Person) // 대학교에 갑니다.
doSomething(someone: mike) // 대학교에 갑니다.
doSomething(someone: jenny) // 등교를 합니다
doSomething(someone: jihoon) // 숨을 쉽니다


