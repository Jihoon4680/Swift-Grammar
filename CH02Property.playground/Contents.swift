import UIKit


struct Student {
    //인스턴스 저장 프로퍼티
    var name : String = "Jihoon"
    var `class` : String = "Swift"
    var koreanAge : Int = 0
    
    
    //인스턴스 연산 프로퍼티
    var usaAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue){
            koreanAge = inputValue + 1
        }
    }
    
    //일반 인스턴스 메서드
    func instanceMethod(){
        print("\(name)의 반은 \(self.class)입니다.")
    }
    // 인스턴스 연산 프로퍼티 ( 읽기전용 ).
    // instanceMethod 대체
    var selfIntroduce: String{
        get{
            return "\(name)의 반은 \(self.class)입니다."
        }
    }
    // 타입 저장 프로퍼티
    static var typeProperty : String = " 타입 프로퍼티 "
    
    // 타입메서드
    static func studentPrint(){
        print("학생입니다.")
    }
    //읽기 전용 타입연산 프로퍼티
    static var typeStudent:String {
        get {
            return "타입연산프로퍼티 학생입니다. "
        }
    }
}

//타입 연산프로퍼티 사용
print(Student.typeProperty) // 타입프로퍼티

var property : Student = Student()
property.koreanAge = 10 //10

// 저장프로퍼티 사용
property.name = "student"
print(property.name) // student

// 인스턴스 연산 프로퍼티사용
print(property.selfIntroduce) //student의 반은 Swift입니다.

print("한국나이는 \(property.koreanAge), 미국나이는 \(property.usaAge)")
//한국나이는 10, 미국나이는 9


//인스턴스 연산 프로퍼티
/* var usaAge: Int {
    get {
        return koreanAge - 1
    }
    set(inputValue){
        koreanAge = inputValue + 1
    }
}
*/
// koreanAge중심으로 연산
// 20 할당했고 // set블럭
property.usaAge = 20 // koreanAge. = 21
print(property.koreanAge)  // 21
property.koreanAge = 30
print("\(property.usaAge)") //get 블럭 // 29

