import UIKit

//For() 함수
// 1. 일반 반복
// 2. 배열 반복


for a in 1..<3 {
    print("\(a)번째 반복")
}

var houseAnimals = ["Dog", "Cat", "Hamster", "Rabbit", "Hedgehog"]
for animal in houseAnimals {
    print(animal, terminator: " / ")
}

for (idx, animal) in houseAnimals.enumerated() {
    print("\(idx+1)번째 동물 : \(animal)")
}

//튜플 순회, 순서가 없다.
var colors = ["Red":1, "Blue":2, "White":3, "Yello":4, "purple":5]
for (color, number) in colors {
    print("\(color)의 번호는 \(number)")
}

//와일드카드
var first = 1
var end = 10
var result = 0
for _ in 1...end {
    result += first
    first += 1
}
print("1부터 10까지 누적 값 : \(result)")

//범위 연산자
//for n in 1..<10 {
//    print(n)
//}

//stride(from: to: by:) 함수와 함께 사용가능
let hours = 12
let hourInterval = 3
for n in stride(from: 3, to: hours, by: hourInterval) {
    print("12까지 3의 배수 \(n)")
}

