//
//  main.swift
//  Control FLow2
//
//  Created by JONGMIN Youn on 2022/02/13.
//

//반목문

//#1 for - in 구문
print("<<for-in>>")

for i in 0...2 {
    print(i)
}

for i in 0...5 {
    
    if i.isMultiple(of: 2) {
        print(i)
        continue
    }
    print("\(i) == odd")
}

print("\n")
//문자열 출력
print("<<String Print>>")

let helloSwift: String = "Hello, Swift!"

for char in helloSwift{ //
    print(char)
}

print("\n")
//와일드카드 구문
print("<<wildcard indentifier>>")
var result: Int = 1
for _ in 1...3 { //그냥 3번 반복하는 것
    result *= 10
}

print(result)

print("\n")
//딕셔너리 활용.
print("<<with Dictionary>>")

let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]

for tuple in friends { //딕셔너리에서 넘겨받은 값은 튜플 타입으로 받는다!
    print(tuple)
}

let address: [String: String] =
    ["Do": "chungbuk", "sigun": "Cheongju", "dong": "maegok" ]

for (Key, Value) in address {
    print("\(Key), \(Value)")
}

//추가 공부 필요: map, filter, flatMap

print("\n")
//while
print("<<while>>")
var names: [String] = ["Joker", "Jenny", "Nova", "yagom"]

while names.isEmpty == false {
    print("good Bye \(names.removeFirst())") //removeFirst() 요소 삭제와 동시에 반환함.
}

print("\n")
//while repeat (do-while)
print("<<repeat - while>>")

var names2: [String] = ["Joker", "Jenny", "Nova", "yagom"]

repeat {
    print("Good bye \(names2.removeFirst())")
} while names2.isEmpty == false
//일단 실행시켜 놓은 다음 조건 확인함

print("\n")
//statement name
print("<<Statement name>>")
//반복문 구문 앞에 네임태그 달아서 break,continue에 활용 가능
var numbers: [Int] = [3, 2342, 6, 3252]

numberLoop: for num in numbers {
    if num > 5 || num < 1 {
        continue numberLoop
    }
    
    var count: Int = 0
    
    printLoop: while true {
        print(num)
        count += 1
    
        if count == num {
            break printLoop
        }
    }
    
    removeLoop: while true {
        if numbers.first != num {
            break numberLoop
        }
        numbers.removeFirst() //3
    }
}
