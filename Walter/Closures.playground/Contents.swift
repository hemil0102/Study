import UIKit
import Foundation

/**
 클로저(Closures)
 다음 세가지 형태 중 하나를 갖는다.
 1. 전역함수 : 이름이 있고 어떤 값도 캡쳐하지 않는 클로저
 2. 중첩함수 : 이름이 있고 관련한 함수로부터 값을 캡쳐할 수 있는 클로저
 3. 클로저표현 : 경량화 된 문법으로 쓰여지고 관련된 문맥(Context)으로부터 값을 캡쳐할 수 있는 이름이 없는 클로저
 
 클로저의 최적화
 1. 문맥(Context)에서 인자 타입(Parameter Type)과 반환 타입(Return Type)의 추론
 2. 단일 표현 클로저에서의 암시적 변환
 3. 축약된 인자 이름
 4. 후위 클로저 문법
 
 하나하나보면 쉽다. 쫄지마라
 */

/**
 정렬 메소드(The Sorted Method)
 sorted(by:) 메소드
 */
let names = ["Harry", "Snew", "Walter", "Ewa", "Christie", "Barry"]
//클로저를 제공하는 일반적인 방법은, 함수를 하나 만드는 것.
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward(_:_:))

/**
 클로저 표현 문법(Closure Expression Syntax)
 */
//{ (parameters) -> return type in
//    statements
//}
//이렇게 인자로 들어가는 형태를 '인라인 클로저'라 부름.
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

/**
 문맥에서 타입 추론(Interring Type From Context)
 인자의 타입을 아는 경우 생략 가능하지만, 가독성을 위해 명시할 수 있음
 */
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })
reversedNames

/**
 단일 표현 클로저에서의 암시적 반환(Implicit Returns from Single-Express Closures)
 단일 표현 클로저에서는 반환 키워드(return)를 생략 가능
 */
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })

/**
 인자 이름 축약(Shorthand Arguments Names)
 인라인 클로저에서 축약 인자 이름을 제공, 인자 값과 인자로 사용하는 인자가 같다는 것을 알기 때문에 입력 부분과 in 키워드를 생략 가능
 */
reversedNames = names.sorted(by: { $0 > $1 })

/**
 연산자 메소드(Operator Methods)
 더 축약할 수 있다. Swift의 String 타입 연산자에는 String끼리 비교할 수 있는 비교 연산자(>.<,=)가 구현되어 있다.
 */
reversedNames = names.sorted(by: >)

/**
 후위 클로저(Trailing Closures)
 만약 함수의 마지막 인자로 클로저를 넣고 그 클로저가 길다면, 후위 클로저를 사용.
 */
func someFuncThatTakesAClosure(closure: () -> Void) {
    //body
}
someFuncThatTakesAClosure {
    //body
}
//함수의 마지막 인자가 클로저고, 후위 클로저를 사용하면, 아래와 같이 사용 가능
reversedNames = names.sorted { $0 > $1 }

//예제
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    
    repeat {
        output = digitNames[number % 10]! + output //digitNames[] 의 값이 있을 수도 있고 없을 수도 있기에 옵셔널
        number /= 10
    } while number > 0
    return output
}

/**
 값 캡쳐 (Capturing Values)
 원본 값이 사라져도 클로져의 body안에서 값을 활용할 수 있음
 가장 단순한 형태는 중첩함수.
 */
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

/**
 클로저는 참조 타입(Closures Are Reference Types)
 클로저를 상수 또는 변수에 할당할 때, 실제로는 상수와 변수에 해당 클로저의 reference(주소)가 할당됨. C 의 함수 포인터 개념.
 앞에서 사용했던 클로저를 상수에 할당하고 실행하면, 사용한 클로저의 마지막 상태에서 10을 증가시켜 결과값을 40 반환.
 */
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()

/**
 이스케이핑 클로저(Escaping Closures)
 함수 밖에서 실행되는 클로저, 비동기로 실행되거나 completionHandler로 사용되는 클로저는 파라미터 타입 앞에 @escaping이라는 키워드를 명시해야 함.
 즉, 함수가 끝나고 실행되는 클로저에 @escaping 키워드를 붙여야 함. @escaping을 사용하는 클로저에는 self 를 명시적으로 언급
 */
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFuncWithNonescapingClosure(closure: () -> Void) {
    closure()       //함수 안에서 끝나는 클로저
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100        //명시적으로 self 를 적어야 함
        }
        someFuncWithNonescapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
instance.doSomething()
instance.x

completionHandlers.first?()
instance.x

/**
 자동클로저(AutoClosures)
 특정 표현을 감싸서 다른 함수에 전달 인자로 사용.
 클로저 실행 전까지는 실제 실행이 되지 않아 계산이 복잡한 연산을 하는데 유용.
 */
var customersInLine = ["Chris", "Alex", "Harry", "Snew", "Walter"]
customersInLine.count

let customerProvider = { customersInLine.remove(at: 0) }
customersInLine.count

print("Now serving \(customerProvider())!")
customersInLine.count

//인자가 없는 자동클로저
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) } )

//@autoclosure 키워드를 사용한 간결해진 자동클로저
//인자 값이 자동으로 클로저로 변환됨. 함수의 인가 값을 넣을 때 클로저가 아니라 클로저가 반환하는 반환 값과 일치하는 형의 함수를 인자로 넣을 수 있음
func serve2(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve2(customer: customersInLine.remove(at: 0))

//@autoclosure 와 @escaping 을 같이 사용한 에제
var customerProviders: [() -> String] = []      //클로저를 저장하는 배열을 선언
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}  //클로저를 인자로 받아 그 클로저를 customerProviders 배열에 추가
collectCustomerProviders(customersInLine.remove(at: 0))     //클로저를 customerProviders 배열에 추가
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")

for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!") //클로저를 실행하면 배열의 0번째 원소를 제거하며 그 값을 출력
}
