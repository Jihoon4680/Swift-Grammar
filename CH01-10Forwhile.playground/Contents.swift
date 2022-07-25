import UIKit

/* 기본형태
 for item in items { // item 부터 items까지.
  // 실행구문
 }
*/

var countNum = [1,2,3]
var people = ["jihoon":3,"diary":4,"code":5]

for counts in countNum {
    print(counts)
}

// Dictionary(튜플)형 반복문
for (name,num) in people {
    print("\(name) num is \(num)")
}

/* 기본형태
 while 조건 {
 //실행구문
 }
*/
//while countNum.count > 1{
//    countNum.removeLast()
//}

/* 기본형태
 repeat{
 //실행구문
}while 조건문
*/
var countNum2 = [1,2,3]
repeat{
countNum2.removeLast()
}while countNum2.count > 0
