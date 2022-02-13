//
//  main.swift
//  Strings and Characters
//
//  Created by JONGMIN Youn on 2022/02/12.
//

print("<<#1>>")
let name: String = "yagom"

var introduce: String = String()
introduce.append("My name is")

introduce += " " + name + "."
print(introduce)

print("\(introduce.count)")
print("\(introduce.isEmpty)")

let unicodeScalarValue: String = "\u{2665}"
print(unicodeScalarValue)

print("\n")
print("<<#2>>")

let hello: String = "Hello"
let yagom: String = "yagom"
var greeting: String = hello + " " + yagom + "!"
print(greeting)

greeting = hello
greeting += " "
greeting += yagom
greeting += "!"
print(greeting)

var isSameString: Bool = false
isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

isSameString = yagom == "yagom"
print(isSameString)

isSameString = yagom == "Yagom"
print(isSameString)

print("\n")
print("<<prefix, postfix>>")
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)

hasPrefix = greeting.hasPrefix("Hello ")
print(hasPrefix)

hasPrefix = yagom.hasPrefix("gom")
print(hasPrefix)

hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix) //false

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix) //true

hasSuffix = greeting.hasSuffix("yagom")
print(hasSuffix) //false

hasSuffix = greeting.hasSuffix("yagom!")
print(hasSuffix) //true

hasSuffix = yagom.hasSuffix("gom")
print(hasSuffix) //true

print("\n")
print("<<Uppercased with Method>>")
var convertedString: String = ""
print(convertedString)

convertedString = hello.uppercased()
print(convertedString)

convertedString = hello.lowercased()
print(convertedString)

convertedString = yagom.uppercased()
print(convertedString)

convertedString = greeting.uppercased()
print(convertedString)

print("\n")
print("<<Uppercased with Property>>")
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString) //false

greeting = "hi"
isEmptyString = greeting.isEmpty
print(isEmptyString) //false

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString) //true

print(greeting.count) //0

greeting = "hiroo"
print(greeting.count)

greeting = """
    hi, i'm yagom
    i want to learn swift
    """
//코드상에서 여러 줄의 문자열으 직접 쓰고싶다면 큰 따옴표 세개를 이용하면 된다.
//큰 따옴표 세 개를 써주고 한줄을 내려써야 한다.
//마지막 줄도 큰 따옴표 세 개는 한줄 내려써야 한다.


print("문자열 내부에서 \n 이런 \"특수문자\"를 \t 사용하면 \\ 이런 놀라운 결과를 볼 수 있습니다.")
print(#"문자열 내부에서 특수문자를 사용하기 \n싫다면 문자열과 앞, 뒤에 #을 붙여주세요"#)

let number: Int = 100
print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 \(number) 해보세요"#) //## 있으면 안에 특수문자 전부 안먹게 되어있음
print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 \#(number) 해보세요"#)
