import UIKit

/**
 빈 배열 생성
 */
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")
someInts.append(3)  //3추가
print("someInts is of type [Int] with \(someInts.count) items")
someInts = []
print("someInts is of type [Int] with \(someInts.count) items")

/**
 기본 값으로 빈 배열 생성
 */
var threeDoubles = Array(repeating: 0.0, count: 2)

/**
 다른 배열을 추가한 배열의 생성
 동일한 타입의 배열을 + 키워드로 합칠 수 있다.
 */
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

/**
 리터럴을 이용한 배열의 생성
 */
//var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList = ["Eggs", "Milk"]     //위 구문보다 간단한 문장

/**
 배열의 접근 및 변환
 */
shoppingList.count
shoppingList.isEmpty
shoppingList.append("Lemon")
shoppingList += ["Coffee"]
shoppingList += ["Water", "Fried", "Chicken"]
shoppingList[3]         //특정 요소에 접근
shoppingList[4...6]     //일정 범위의 요소에 접근
shoppingList[4...6] = ["Bananas", "Apples"] //해당 범위의 값을 대체, 갯수가 줄거나 늘어날 수 있음
shoppingList.insert("Pizza", at: 0)     //특정 위치에 원소 추가
let firstValue = shoppingList.remove(at: 0)      //특정 위치 원소를 제거, 반환
let apples = shoppingList.removeLast()      //마지막 값을 제거, 반환

/**
 배열의 순회
 */
for item in shoppingList {
    print(item, terminator: " ")
}

//인덱스가 필요할 때는 enumerated()
for (idx, value) in shoppingList.enumerated() {
    print("Item \(idx+1) : \(value)", terminator: " / ")
}
