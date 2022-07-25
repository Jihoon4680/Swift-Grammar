import UIKit

struct Money{
    
    // 프로퍼티 감시자.
    var currentRate : Double = 1000{
        willSet(newRate){
            print("현재는 currentRate는 \(currentRate)이고 바뀔값은 \(newRate)입니다.")
        }didSet(oldRate){
            print("oldRate \(oldRate)에서 currentRate \(currentRate)로 바뀌었습니다.")
        }
    }
    
    // 암시적 매개변수.
    var dollar : Double = 0 {
        willSet{ // newValue
            print("dollar가 \(newValue)로 변경")
        }didSet{ // oldValue
            print("dollar \(oldValue)에서 \(dollar)로 변경")
        }
    }
    
    var won : Double {
        get{
            return currentRate*dollar
        }set{
            print("set property")
        }
        /*
        willSet{
            print("cannot use \(newValue) ")
        }
        */
    }
}

var moneyStruct:Money = Money()

moneyStruct.currentRate = 1100
// 현재는 currentRate는 1000.0이고 바뀔값은 1100.0입니다.
// oldRate 1000.0에서 currentRate 1100.0로 바뀌었습니다.
moneyStruct.dollar = 300
// dollar가 300.0로 변경
// dollar 0.0에서 300.0로 변경
moneyStruct.won = 30
// set property
