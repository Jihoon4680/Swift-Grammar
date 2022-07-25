import UIKit



// 옵셔널 체이닝은 옵셔널 요소 내부의 프로퍼티로
// 또다시 옵셔널이 연속적으로 연결되는 경우 유용하게 사용할 수 있습니다

//MARK: - 옵셔널 체이닝
//MARK: 예제 클래스 및 인스턴스 생성
class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let jihoon: Person? = Person(name: "jihoon")
let apart: Apartment? = Apartment(dong: "401", ho: "403")
let superman: Person? = Person(name: "superman")



// 옵셔널 체이닝 미 사용
func guardJob(owner: Person?) {
    if let owner = owner { // owner가 값이 있는가.
        if let home = owner.home { // home이 값이 있는가.
            if let `guard` = home.guard { // guard가 값이 있는가.
                if let guardJob = `guard`.job { // jon이 값이 있는가
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: jihoon)


// 옵셔널 체이닝 사용
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: jihoon) // 우리집 경비원은 직업이 없어요



jihoon?.home?.guard?.job // nil
jihoon?.home = apart

jihoon?.home // Optional(Apartment) - apart instance
jihoon?.home?.guard // nil
jihoon?.home?.guard = superman // guard문에 superman대입하라

jihoon?.home?.guard // Optional(Person) - superman instance
jihoon?.home?.guard?.name // Optional(String) - "superman"
jihoon?.home?.guard?.job // nil
jihoon?.home?.guard?.job = "경비원"



//MARK: - nil 병합 연산자
var guardJob: String

guardJob = jihoon?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원
jihoon?.home?.guard?.job = nil

guardJob = jihoon?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨
