import UIKit
/*
class 이름 : 상속받을 클래스 이름{
    //구현부
}
*/

class Person{
    
    var name : String = "man"
    
    func selfIntoduce(){
        print("저는 \(name)입니다.")
    }
    
    //타입메서드
    static func typeMethod(){
        print("type Method - static")
    }
    
    //재정의 방지
    final func hello(){
        print("type Method - final")
    }
    
    //재정의 가능 타입 메서드
    class func classMethod(){
            print("type Method - class")
    }
    
    // class 와 final 같이 사용하는 경우
    // static과 같은 역할 : 타입메서드
    final class func finalClassMethod(){
        print("type method - final class method")
    }
    
}

//Person을 상속받는 클래스
class Student:Person{
    
    var major : String = "soso"
    
    override func selfIntoduce(){
            print("저의 이름은 \(name)이고 전공은 \(major)입니다.")
    }
    
    override class func classMethod() {
        print(" can overide class method ")
    }
    
    /* static 메서드는 재정의 불가
    override func typeMethod(){
        print("override static? ")
    }
     */
    /*
    //final키워드 사용 : 재정의 불가
    override final func hello(){
        print("")
    }
    override final class func finalClassMethod(){
        print("")
    }
     */
    
}



let jihoon : Person = Person()
let boost : Student = Student()

jihoon.name = "jihoon"
boost.name = "course"
boost.major = "Swift"


jihoon.selfIntoduce()// 저는 jihoon입니다

boost.selfIntoduce()// 저의 이름은 course이고 전공은 Swift입니다.

Person.classMethod()// type method - class

Person.typeMethod()// type method - static

Person.finalClassMethod()// type method - final class


Student.classMethod()// overriden type method - class

Student.typeMethod()// type method - static

Student.finalClassMethod()// type method - final class
