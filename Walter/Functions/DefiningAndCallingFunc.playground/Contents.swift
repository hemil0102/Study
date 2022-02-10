import UIKit

/**
 정의와 호출(Defining And Calling Functions)
 파라미터와 반환
 */
func greet(person: String) -> String {
 let greeting = "Hello, " + person + "!"
 return greeting
}
greet(person: "Walter")

//메시지를 결합하는 부분과 반환하는 부분을 합쳐서 더 짧게 만들 수 있음
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "YS"))

/**
 파라미터가 없는 함수
 */
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())

/**
 복수의 파라미터를 사용
 */
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Walter", alreadyGreeted: true))

/**
 반환값이 없는 함수
 반환값을 선언하진 않았지만 반환 값이 있음
 Void라는 특별한 형태의 반환값, Void는 간단히 ()를 사용한 빈 튜플임
 */
func greet2(person: String) {
    print("Hello, \(person)!")
}
greet2(person: "Walter")

//아래와 같이 사용할 때 반환값을 무시할 수 있음
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
printWithoutCounting(string: "hello, world")

/**
 복수의 값을 반환하는 함수
 튜플을 반환값으로 사용
 */
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

/**
 옵셔널 튜플 반환형
 위 예제와는 다르게 ? 가 붙음
 */
func minMax2(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
//실제 반환 값에 접근하기 위해서 if let 과 같은 옵셔널 체인을 사용하거나 강제unwrapping(!)해야 함
if let bounds = minMax2(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

/**
 함수 인자 라벨과 파라미터 이름
 */
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // 함수 내부에서 firstParameterName와 secondParameterName의 인자를 사용합니다.
    print("firstParam : \(firstParameterName), secondParam: \(secondParameterName)")
}
someFunction(firstParameterName: 1, secondParameterName: 2)

/**
 인자 레벨 지정
 호출시엔 인자 라벨을, 함수 내부에서는 파라미터 이름을 사용.
 */
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

/**
 인자 생략
 _(와일드카드) 로 인자 이름을 생략할 수 있음
 */
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // 함수 안에서 firstParameterName, secondParameterName
    // 인자로 입력받은 첫번째, 두번째 값을 참조합니다.
}
someFunction(1, secondParameterName: 2)

/**
 기본 파라미터 값
 */
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    print("valueWithoutDefault : \(parameterWithoutDefault), valueWithDefault : \(parameterWithDefault)")
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)

/**
 집합 파라미터
 인자로 특정 형의 집합 값을 사용할 수 있음
*/
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))
print(arithmeticMean(3, 8.25, 18.75))

/**
 인-아웃 파라미터(C언어의 포인터 개념)
 인자값을 직접 변경, 선언을 위해 파라미터 앞에 inout 키워드를 사용.
 scope 밖에 영향을 줄 수 있는 또 하나의 방법
 단, inout 키워드 사용시 default 값을 사용할 수 없으며,
 집합 파라미터는 inout을 사용할 수 없음.
 */
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

/**
함수형
 함수형의 사용
 */
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
//함수를 대입?
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
//형태가 같으니 할당할 수 있음
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")
//함수형을 선언하지 않아도 Swift가 추론할 수 있음
let anotherMathFunction = addTwoInts

/**
함수형
 파라미터형의 사용
 파라미터로 함수를 전달할 수 있음
 */
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

/**
 함수형
  반환형의 사용
  함수를 반환하는 함수
 */
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero는 이제 stepBackward() 함수를 가르키고 있습니다.

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

/**
 중첩 함수
 */
func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction2(backward: currentValue2 > 0)
// moveNearerToZero는 이제 중첩 돼 있는 stepForward() 함수를 가르킵니다.
while currentValue2 != 0 {
    print("\(currentValue2)... ")
    currentValue2 = moveNearerToZero2(currentValue2)
}
print("zero!")
