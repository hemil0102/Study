//
//  main.swift
//  Functions
//
//  Created by JONGMIN Youn on 2022/02/12.
//

//Functions
// - first class citizen
// - 클래스, 구조체, 열거형 등 특정 타입에 연괸되어 사용하는 함수를 메서드
// - 모듈 전체에서 전역적으로 사용할 수 있는 코드블록을 함수라 한다.

/*
 func
 argument label
 parameter name
 inout
 */

// #1. basic
print("<<Basic>>")

func hello(name: String) -> String {
    return "Hello \(name)"
}

let helloJenny: String = hello(name: "Jenny") //리턴형을 변수에 담는 형태. 함수형의 형태는 아님!
print(helloJenny) //Hello Jenny

print("\n")
//Parameter Name
print("<<Parameter Name>>")

func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)!, I'm \(myName)"
}

print(sayHello(myName: "Jenny", yourName: "jongmin"))

print("\n")
//Argument Label
print("<<Argument Label>>")

func sayHello2(from myName: String, to name:String) -> String {
    return "Hello \(name), I'm \(myName)"
}

print(sayHello2(from: "yagom", to: "Jenny"))

print("\n")
//No Argument Label
print("<<No Argument Label>>")

func sayHello3(_ name: String, _ times: Int) -> String { //argument label by wildcard identifier
    var result: String = ""
    
    for _ in 0 ..< times {
        result += "Hello, \(name)!" + " "
    }
    
    return result
}
print(sayHello3("Chope", 2))

print("\n")
//다른 전달인자 이름으로 오버로딩 가능(오버로딩: 재정의)
print("<<Overloading by another argument label>>")

func sayHello4(to name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello, \(name)!" + " "
    }
    return result
}

func sayHello4(to name: String, repeatCount times: Int) -> String {
    var result: String = ""
    for _ in 0..<times {
        result += "Hello, \(name)!" + " "
    }
    return result
}
print(sayHello4(to: "Chope", 2))
print(sayHello4(to: "Chope", repeatCount: 2))

print("\n")
//Parameter Name with init value
print("<<Parameter Name with init value>>")

func sayHello5(_ name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}
print(sayHello5("hana"))
print(sayHello5("Joe", times: 2))

print("\n")
//variable parameters and input parameters (...키워드)
print("<<variable parameters and input parameters (...키워드)>>")

func sayHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriends(me: "yagom", friends: "Johansson", "Jay", "Wizplan"))
print(sayHelloToFriends(me: "yagom"))

print("\n")
//inout parameters
print("<<inout parameters>>")

var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) { //포인터 & 와 비슷
    arr[1] = 1
}

nonReferenceParameter(numbers) //numbers 배열 값복사
print(numbers[1]) //2 -> stay value

referenceParameter(&numbers) //&: reference //numbers 배열의 주소복사
print(numbers[1]) //1

print("\n")
//no return func(반환값이 없는 타입)
print("<<no return func>>")

func sayHelloWorld() {
    print("Hello world!")
}
sayHelloWorld()

func sayHello6(from myName: String, to name: String ) {
    print("Hello, \(name), I'm \(myName)")
}
sayHello6(from: "yagom", to: "jongmin")

func sayGoodbye() -> Void {
    print("good bye")
}
sayGoodbye()

print("\n")
//Datatype func
print("<<Datatype Func>>")

typealias CalculateTwoInt = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: CalculateTwoInt = addTwoInts
print(mathFunction(2, 5))

mathFunction = multiplyTwoInts(_:_:)
print(mathFunction(2, 5))

print("\n")
//parameter of func
print("<<Parameter of func>>")

func printMathResult(_ mathFunction: CalculateTwoInt, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)


func chooseMathFunction(_ toAdd: Bool) -> CalculateTwoInt {
    return toAdd ? addTwoInts : multiplyTwoInts
}

printMathResult(chooseMathFunction(true), 3, 5)


