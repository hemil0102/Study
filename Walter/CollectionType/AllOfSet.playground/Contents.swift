import UIKit

//셋(Set)
//Set 형태로 저장하기 위해서는 반드시 타입이 hashable 이어야 함
//Swift에서 String, Int, Double, Bool 과 같은 기본 타입은 기본적으로 hashable.

/**
 빈 Set 생성
 */
var letters = Set<Character>()
letters.count
letters.insert("A")
letters = []

/**
 배열 리터럴을 이용한 Set 생성
 */
//var rock_pager_scissors: Set<String> = ["Rock", "Paper", "Scissors"]
var rock_pager_scissors: Set = ["Rock", "Paper", "Scissors"]   //타입 추론 형식으로도 선언 가능

/**
 Set 접근과 변경
 */
rock_pager_scissors.count
rock_pager_scissors.isEmpty
rock_pager_scissors.insert("GiveUp") //삭제 하고 반환
if let removedThing = rock_pager_scissors.remove("GiveUp") {
    print("\(removedThing)? I'm over it")
} else {
    print("I never much cared for that")
}
rock_pager_scissors.contains("Rock")

/**
 Set의 순회
 */
for genre in rock_pager_scissors {
    print("\(genre)", terminator: " ")
}

/**
 Set 명령
 */
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()        //A, B 배열 모두를 가져옴. Union
oddDigits.intersection(evenDigits).sorted()     //A B 배열에서 공통된 원소를 가져와 정렬
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()     //subtracting(...)의 값을 제외, 나머지를 가져와 정렬
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() //A, B배열의 공통된 원소를 제외, 나머지를 가져와 정렬

/**
 Set의 멤버십과 동등 비교
 동등 비교를 위해 == 키워드 사용
 멤버 여부를 확인하기 위해 isSuperset(of:), isStrictSubset(of:), isStrictSuperset(of:), isDisjoint(with:) 메소드를 사용.
 isDisjoint(with:) 는 둘 간의 공통값이 없는 경우 true를 반환
 */
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)
