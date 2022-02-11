import UIKit

//전송 제어 구문(Control Transfer Statements)
//continue, break, fallthrough, return, throw

//Continue
//현재 loop를 중지하고 다음 loop를 수행
let puzzleQuiz = "great minds think alike"
let charToRemove: [Character] = ["a", "e", "i", "o", " "]
var result = ""
for character in puzzleQuiz {
    if charToRemove.contains(character) {
        continue
    } else {
        result.append(character)
    }
}

print(result)

//Break
//전체 제어문의 실행을 즉시 중지함. loop또는 Switch에서 사용
let numberSymbol: Character = "三"  // 중국어로 3을 의미하는 문자입니다.
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}

//fallthrough
//Switch 에서 case내의 작업 완료되면 break가 쓰인 것처럼 자동으로 구문을 빠져나옴. fallthrough는 그것을 방지, 이후의 case도 실행.
//단, 다음 case 의 조건을 확인하지 않고 실행
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
case 20:
    description += ", and 20"
    fallthrough
default:
    description += " an integer."
}
print(description)
