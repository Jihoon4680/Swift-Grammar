import UIKit

var doubleArray:Array<Double> = Array<Double>()

//다양한 표현법

//var doubleArray: Double<Double> = [Double]()
//var doubleArray: Array<Double> = []
//var doubleArray: [Double] = Array<Double>() //Quiz
//var doubleArray: [Double] = [Double]()  //Quiz
//var doubleArray: [Double] = []
//var doubleArray: [Double] = []
//var doubleArray: Array<Double> = [ 1,2,3 ] // 초기화 // Quiz

var doubleArrayTwo: [Double] = [3.3,2.4,5.5]



//배열 추가
doubleArray.append(3) // [3]
doubleArray.append(5) // [3,5]
doubleArray.append(7.4) // [3,5,7.4]
doubleArray.append(15) // [3,5,7,15]

//배열 원소 포함 여부
doubleArray.contains(5) // true
doubleArray.contains(1) // false

//배열의 총 개수
print(doubleArray.count) // 4

//배열 삭제
doubleArray.remove(at: 0) // 0 번째 원소(3) 삭제 [ 5,7,15 ]
doubleArray.removeLast() // 마지막 원소(15) 삭제 [5,7]
doubleArray.removeAll() // 전체 배열 삭제 []

//상수형 배열 선언
let immutableArray : [Int] = [ 1,2,3]

// 추가, 제거 불가
//immutableArray.append(3)
//immutableArray.removeAll()


var intDictionary: Dictionary<String,Int> = [String:Int]()

//  다양한 표현
//var intDictionary: Dictionary<String,Int> = [:] // : 중요.
//var intDictionary: Dictionary<String,Int> = Dictionary<String,Int>()
//var intDictionary: [String: Int] = Dictionary<String,Int>()
//var intDictionary: [String:Int] = [:]
//var intDictionary: [String:Int] = Dictionary<String,Int>()
//var intDictionary = [String:Int]()


//<>는 ',' 로  []는 ':' 로 키와 값을 구별. +++++

// 추가 - 딕셔너리변수['키'] = 값
intDictionary["key"] = 3
intDictionary["stringType"] = 5

// 해당 키의 값 변경. - 딕셔너리변수['해당키'] = 값.
intDictionary["key"] = 14

print(intDictionary) //["stringType": 5, "key": 14]

intDictionary.removeValue(forKey: "key") // [ "stringType" : 5 ]


//상수 딕셔너리 (불변 딕셔너리)
let emptyDic : Dictionary<String,String> = [:]
let immutableDictionary : Dictionary<String,String> = ["추가불가":"제거불가"]

// emptyDic["key"] = "add" // 컴파일오류 // 불변딕셔너리
// 수정 제거가 되지 않는다.
// immutableDictionary.removeValue(forKey: "추가불가.") // 제거불가.
// immutableDictionary["추가불가"] ="변경" // 변경불가.



var firstSet:Set<Int>=Set<Int>()

//추가 - insert()
firstSet.insert(3)
firstSet.insert(6)
firstSet.insert(19)
firstSet.insert(3)
firstSet.insert(19)
firstSet.insert(1) //[19,1,6,3]
print(firstSet) //[19,1,6,3] // +++매 연산마다 순서는 달라진다.

//포함여부 - comtains()
firstSet.contains(3) // true
firstSet.contains(13) // false

//제거 - remove('값')

firstSet.remove(3) // 3 삭제
firstSet.removeFirst() // 0번쨰 원소 삭제 //+++ set은 실행 시 순서가 무작위로 바뀔 수 있어서 removeLast나 removeFirst함수는 지양하는 편이 좋겠다.
print(firstSet)

//멤버 수
firstSet.count // 2

//set활용
var setOne : Set<Int> = [1,2,3,4]
var setTwo : Set<Int> = [2,4,6,8]


//합집합 - 첫번째Set.union(두번째Set)
let unionSet:Set<Int> = setOne.union(setTwo)
print(unionSet) //[6, 8, 1, 3, 2, 4]

//오름차순 변수.sorted()
let sortedUnion :[Int] = unionSet.sorted() // [1, 2, 3, 4, 6, 8]
//let sortedUnionTyper : Int = unionSet.sorted() // 컴파일 오류 / 단일변수에 컬렉션변수를 할당. +++++

//차집합
let subtractSet : Set<Int> = setOne.subtracting(setTwo) // [3,1]

//교집합
let intersactSet : Set<Int> = setOne.intersection(setTwo) // [2,4]


