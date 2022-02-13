//
//  main.swift
//  Basic Operators
//
//  Created by JONGMIN Youn on 2022/02/12.
//


/* Operator class
 1. Single Operator !A
 2. Binary Operator +, -
 3. Ternary Operator A ? B : C
 4. Prefix Operator !A
 5. infix Operator +, -
 6. Postfix Operator A!
 
 */

/*
 1. Assignment Operator(할당 연산자)
    A = B (if A and B are different type, error occurs
 
 2. Arithmetic Operator(산술연산자)
    A + B
    A - B
    A * B
    A / B
    A % B //나머지. swift 에서는 부동소수점 타입도 나머지 연산 지원하며, 소수점을 제외한 정수값으로만 결과값 반환함.
 
 + 또한, 스위프트는 데이터 타입에 굉장히~~ 엄격하기 떄문에 서로 다른 자료형끼리의 연산을 엄격히 제한한다.
 Int, UInt 끼리도 연산 불가함!
 
 3. Comparison Operator(비교 연산자)
    A == B
    A >= B
    A <= B
    A > B
    A < B
    A != B
    A === B
    A !== B
 -> ===, !==: A와 B가 참조(레퍼런스)타입일 때 같은 인스턴스를 가르키는지 비교.
    즉, A와 B가 같은 메모리 주소를 가르키는지 확인할 때...(Reference, Memory Address.)
 
    A ~= B
 -> 패턴 매치

 4. Ternary Condition Operator (삼항 조건 연산자) -> 아마 유일한 삼항연산자일텐데...?
    <Condition> ? A : B
 
 5. Range Operator (범위 연산자)
    A...B -> A,B 포함하는 범위
    A..<B -> A포함, B미포함
    A... -> A 이상의 수
    ...A -> A 이하의 수
    ..< A -> A 미만의 수
 
 6. Bool Operator(불 연산자)
    !B NOT (단항 연산자)
    A && B AND
    A || B OR
 
 7. Bit Operator(비트 연산자)
    ~A
    A & B
    A | B
    A ^ B
    A << B // 4 << 1 -> 8
    A >> B // 4 >> 1 -> 2
 
 8. Compound Assignment Operator(복합 할당 연산자)
    A += B
    A -= B
    A *= B
    A /= B
    A %= B //나머지를 A에 할당. A = A % B
    A <<= N // A = A << N
    A >>= N // A = A << N
    A &= B // A = A & B
    A |= B // A = A | B
    A ^= B // A = A ^ B
 
 9. Overflow Operator(오버플로우 연산자)
    &+
    &-
    &*
 
 10. ETC
    A ?? B //옵셔널. A가 nil이 아니면 A를 반환하고, A가 nil 이면 B 반환
    -A // 부호 변경
    O! // 강제 추출 옵셔널
    V? // 옵셔널 표현/옵셔널 안전 추출
 
 <Extension>
 - Swift 에서는 연산자 우선순위가 정해져있어서, 결합방향을 체크할 수 있다! 필요시, 문서에 precedencegroup 확인
 - 필요시, 연산자를 사용자가 재정의 할 수 있다.(단, 할당연산자(=)와 삼항연산자는 사용자 재정의 불가함)
 */

//전위 연산자 재정의 1

prefix operator ** //** 는 기본연산자에 없기 떄문에 여기서 정의 필요

prefix func ** (_ value: Int) -> Int {
    return value * value
}

let minusFive: Int = -5
let sqrtValue: Int = **minusFive
print(sqrtValue) //25

//전위 연산자 재정의 2
prefix func ! (value: String) -> Bool {
    return value.isEmpty
}

var stringValue: String = "yagom"
var isEmptyString: Bool = !stringValue

print(isEmptyString) //false

stringValue = ""
isEmptyString = !stringValue

print(isEmptyString) //true

//전위 연산자 재정의 3
prefix operator ++

prefix func ++ <T: Numeric>(value: T) -> T { //제네릭
    return value + value
}

let Value = 3
let result = ++Value

print(result)

let Value2: Double = 3.2
let result2: Double = ++Value2

print(result2)

//String 에서는 어떻게 작동시켜야 할지?
