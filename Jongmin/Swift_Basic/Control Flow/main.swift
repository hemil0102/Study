//
//  main.swift
//  Control Flow
//
//  Created by JONGMIN Youn on 2022/02/12.
//

// #1 - if
print("#1 <<if>>")

let first: Int = 5
let second: Int = 10

if first > second {
    print("first > second")
} else if (first < second) { //조건은 괄호로 싸도되고 안싸도 된다.
    print("first < second")
} else {
    print("first = second")
}
//분기문이므로 당연히 어느 조건에서 실행되면, 나머지 하위 조건들은 실행되지 않는다!
//else 나 else if 전부 생략 가능하다. (몇몇 언어에서는 else를 요구하는데도 있더라는... VBA)

print("\n")
// #2 - switch
print("#2 <<switch>>")
/* Keyword for switch
 switch -
 case -
 break - 가장 가까운 switch 구문 종료
 fallthrough - 아래 구문으로 이동(종료x)
 where - case의 조건 확장
 */
print("\n")
//case: Integer
print("<<case: Integer>>")
let integerValue: Int = 5

switch integerValue { //조건에는 다양한 타입이 들어갈 수 있다.
    
case 0: //case 에 들어가는 비교 값은 조건의 타입과 일치해야 한다!
    print("Value == zero")
    
case 1...10 :
    print("Value == 1~10")
    fallthrough //go to only right below case. no exit
    
case Int.min..<0, 101..<Int.max:
    print("Value < 0 or Value > 100")
    //fallthrough //if "fallthrough" is activated, below "break" will be ignored.
    break //switch end
    
default: //necessary if the condition is not certain!!
    print("10 < Value <= 100")
    //break
}

print("\n")
//String
print("<<case: String>>")
let stringValue: String = "Liam Neeson"

switch stringValue {
case "yagom":
    print("He is yagom")
case "Jay":
    print("He is Jay")
case "Jenny", "Joker", "Nova":
    print("He or She is \(stringValue)")
default:
    print("\(stringValue) said, 'i don't know who you are")
}

let stringValue2: String = "Jenny"

switch stringValue2 {
case "yagom":
    print("He is yagom")
case "Jay":
    print("He is Jay")
case "Jenny":
    fallthrough //만약, 실행될 코드가 없으면 에러남. fallthrough 라도 적어줘야함.
case "Joker":
    fallthrough
case "Nova":
    print("He or She is \(stringValue2)")
default:
    print("\(stringValue) said")
}

print("\n")
//tuple
print("<<case: tuple>>")
typealias NameAge = (name: String, age: Int)

let tupleValue: NameAge = (name: "Yagom", age: 99)

switch tupleValue {
case ("Yagom", 80):
    print("completely correct")
case ("Yagom", _): //_ wildcard identifier. means anything is OK
    print("correct only name")
case(_, 99):
    print("correct only age")
default:
    print("who are you looking for")
}

print("\n")
//value binding
print("<<case: value binding>>")
switch tupleValue {
case ("Yagom", 80):
    print("completely correct")
case ("Yagom", let age): //let age 로 Value binding(let age에 tupleValue에서 들어온 값을 넣어준다는 뜻)
    print("correct only name, \(age)")
case(let name, 99):
    print("correct only age, \(name)")
default:
    print("who are you looking for")
}

//where 키워드 (case 조건 확장)

let level: String = "employee"
let period: Int = 1
let isIntern: Bool = false

switch level {
case "employee" where isIntern == true:
    print("Intern")
case "employee" where period < 2 && isIntern == false:
    print("newbie")
case "employee" where period > 5:
    print("oldie")
case "employee":
    print("It's employee")
case "Manager":
    print("It's Manager")
default:
    print("are you boss?")
}

//Enumeration

enum School {
    case primary, elementary, middle, high, college, university, graduate
}

let lastSchool: School = School.university //School 키워드 생략 가능

switch lastSchool {
case .primary:
    print("lastSchool is primary")
case .elementary:
    print("lastSchool is elementary")
case .middle:
    print("lastSchool is middle")
case .high:
    print("lastSchool is high")
case .college, .university:
    print("lastSchool is university")
case .graduate:
    print("backsoo")
} //만약, 열거형의 케이스가 하나라도 구현되지 않으면 default: 꼭 써줘야함

enum Menu {
    case chicken, pizza, hamburger
}

let lunchMenu: Menu = .hamburger

switch lunchMenu {
case .chicken:
    print("i love chicken")
case .pizza:
    print("i love pizza")
@unknown case _: //default: 와 같은 표현 //@unknown 으로 switch 문에 경고를 준다. (만약, switch 구문 내부를 수정하지 않고, 열거형에 케이스가 추가된 경우 대비)
    print("what do you have for menu?")
}
