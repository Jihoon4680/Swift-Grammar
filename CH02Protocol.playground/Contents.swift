import UIKit
/*
protocol <#프로토콜 이름#> {
    /* 정의부 */
}
*/
protocol Talkable {
    
   
    var topic: String { get set } //읽기,쓰기
    var language: String{ get }
    
    // 메서드 요구
    func talk()
    
    // 이니셜라이저 요구
    init(topic: String, language: String)
}

//MARK: - 프로토콜 채택 및 준수
// Person 구조체는 Talkable 프로토콜을 채택했습니다
struct Person: Talkable {
    // 프로퍼티 요구 준수
    var topic: String
    //let topic : String // 컴파일오류 // 읽기,쓰기 전용 상수사용불가
    let language: String
    
    // 메서드 요구 준수
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    
    /*
    //연산프로퍼티로 대체 가능
    var subject: String = ""
    let language : String  {return "한국어" } // { get { return "한국어"}}
    var topic : String {
        set {
            self.subject = newValue
        }get{
            return self.subject
        }
    }
    */
    
    // 이니셜라이저 요구 준수
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}




/* 선언
 protocol <#프로토콜 이름#>: <#부모 프로토콜 이름 목록#> {
 /* 정의부 */
 }
*/



protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
//    func read() // read함수 구현해야됨
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
//    func read()
//    func write()
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
    
    func speak() {
        print("Speak")
    }
}

//MARK: 클래스 상속과 프로토콜

//클래스와 동시에 프로토콜을 상속하려면
//우선 상속받을 클래스를 선언하고 뒤에 프로토콜 나열
class SuperClasssese: Readable {
    func read() { }
}

class SubClasssese: SuperClasssese, Writeable, ReadSpeakable {
    func write() { }
    func speak() { }
}

//MARK:- 프로토콜 준수 확인

//is, as 연산자 사용
let sup: SuperClasssese = SuperClasssese()
let sub: SubClasssese = SubClasssese()

var someAny: Any = sup
someAny is Readable // true
someAny is ReadSpeakable // false
someAny = sub

someAny is Readable // true
someAny is ReadSpeakable // true
someAny = sup

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read
if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
} // 동작하지 않음 // sup ( superclass) 에는 read 함수밖에 없음
someAny = sub

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read
