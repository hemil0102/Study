import UIKit

// 1. 단순한 비교
// 2. if - else if - else
// 3. if () ? A : B
// 4. &&, || 등 비교연산, 논리연산
// 5. isEmpty 사용방법

// 1. 단순비교
var number = 2

if number == 1 {
    print("1 입니다.")
} else if number == 2 {
    print("2 입니다.")
} else {
    print("3 입니다.")
}


// 2. 비교 연산자 사용
var five = 5

if five == 5 { print("\(five) 입니다.") }
if five != 10 { print("10이 아닙니다.")}
if five >= 7 { print("7이 아니며, 7보다 큰 수입니다.") }
if five <= 3 { print("3이 아니며, 3보다 작은 수입니다..") }

// 3. 논리 연산자
var isApple = true
var isCoffee = false

if isApple && isCoffee { print("모두 과일이다.") }
if isApple || isCoffee { print("하나만 과일이다.") }
if !isCoffee { print("커피는 과일이 아니다.") }

// 4. 함수를 이용
var number_array = [1, 2, 3, 4, 5]

if number_array.count >= 5 {
    print("총 5개의 숫자가 있는 배열입니다.")
}
