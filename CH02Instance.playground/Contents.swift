import UIKit

class PersonOne{
    
    var name: String = "unknown"
    var age : Int = 0
    var nick : String = "nick"

}

var jihoon:PersonOne = PersonOne()

// 새로운 값을 생성된 인스턴스의 프로퍼티에 할당
jihoon.name = "change ihoon"
jihoon.age = 10
jihoon.nick = "change nick"


class PersonTwo {
    var name: String
    var age: Int
    var nickName: String
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let boost: PersonTwo = PersonTwo(name: "trevor", age: 28, nickName : "english")

class PersonThree {
    var name: String
    var age: Int
    var nickName: String?
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }

// 위와 동일한 기능 수행
// convenience init(name: String, age: Int, nickName: String) {
//       init(name: name, age: age)
//       self.nickName = nickName
//  }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let karl: PersonThree = PersonThree(name: "jihoon", age: 32)
let jane: PersonThree = PersonThree(name: "mike", age:19 , nickName: "m")

class Puppy {
    
    var name : String
    var owner:PersonThree!
    
    init(name:String){
        self.name = name
    }
    
    func goOut(){
        print("\(name)가 주인 \(owner.name)에게 양도됩니다. ")
    }
}

let baddok: Puppy = Puppy(name:"badook")
// baddok.goOut() // GoOut함수의 owner.name의 값이 초기화 되지 않아서 사용 불가.

baddok.owner = karl
baddok.goOut()

class PersonFour{
    
    var name : String
    var age : Int
    var nick : String?
    
    init?(name: String, age : Int){
        
        if(0...120).contains(age) == false{
            return nil
        }
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

var john:PersonFour? = PersonFour(name: "john", age: 10)
var mac:PersonFour? = PersonFour(name: "mac", age: 121)
var ios:PersonFour? = PersonFour(name: "", age: 30)

//print(john)
//print(mac) //nil
//print(ios) //nil

class PersonFive{
    
    var name: String
    var child: PersonThree
    var pet: Puppy?
    
    init(name: String, child : PersonThree){
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name{ // 옵셔널타입 pet.name에 값이 있다면
            print("\(name)가 \(child.name)에게 \(petName)을 양도합니다. ")
            self.pet?.owner = child // pet
        }
        
    }
}

var test :PersonFive? = PersonFive(name: "last", child: karl)
test?.pet = baddok
// 값이 없음 메모리 할당 불필요 // 메모리에서 해제
test = nil // last가 jihoon에게 badook을 양도합니다.
