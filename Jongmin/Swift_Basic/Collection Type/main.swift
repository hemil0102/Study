//
//  main.swift
//  Collection Type
//
//  Created by JONGMIN Youn on 2022/02/12.
//

/*
 Array - [value] 요소 중복 허용
 Dictionary - [key: value] key 중복 허용 안함(고유해야함)
 Set - [value] 요소 중복 허용 안함
 
 Dictionary 와 Set 는 순서 상관없거나 요소가 유일해야함.(해쉬 가능한 값)
 
 Array<Int> == [Int]
 Dictionary<Int, String> == [Int, String]
 Set<Int> -> 별도 축약형 없음
 */

//Array
print("<<Array>>")

var names: Array<String> = ["yagom", "chulsoo", "younghee", "yagom"]
//Array<String> == [String]

var names2: [String] = ["yagom", "chulsoo", "younghee", "yagom"]

var emptyArray: [Any] = [Any]() //Create empty array having Any Type
var emptyArray2: [Any] = Array<Any>() //same

var emptyArray3: [Any] = []
print(emptyArray3.isEmpty)
print(names.count)

emptyArray3.append(1)
emptyArray3.append("abc")
emptyArray3.append(1.1)
print(emptyArray3)

print(names[2])
names[2] = "jenny"
print(names[2])
names

names.append("elsa")
names.append(contentsOf: ["john", "max"]) //배열 맨 마지막에 john, max 추가
names.insert("happy", at: 2) //인덱스2에 happy 삽입

names.insert(contentsOf: ["jinhee", "minsu"], at: 3) //인덱스3에 jinhee, minsu 삽입

for str in names
{
    print(str)
}

print(names.firstIndex(of: "yagom")) //중복된 요소가 있을 때는 제일 먼저 발견된 요소의 인덱스 반환
print(names.firstIndex(of: "Christal")) //nil
print(names.first)
print(names.last)

let firstItem: String = names.removeFirst() //첫번째 요소 배열에서 삭제 후 해당 요소 반환
//delete firstItem and set it on a string
let lastItem: String = names.removeLast() //마지막 요소 배열에서 삭제 후 해당 요소 반환
let indexZeroItem: String = names.remove(at: 0) //배열에서 인덱스에 해당하는 요소 삭제 후 해당요소 반환

print(firstItem)
print(lastItem)
print(indexZeroItem)
print(names[1 ... 3])

print("")
//Dictionary
print("<<Dictionary>>")

typealias StringIntDictionary = [String: Int] //타입 정의

var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
var numberForName2 : [String: Int] = [String: Int]()
var numberForName3 : [String: Int] = [:]
//딕셔너리 타입 정의방법. 전부 가능하다!

var numberForName4 : [String: Int] = ["yagom": 100, "chulsoo" : 200, "jenny": 300]
//바로 초기화해도 상관없음

print(numberForName4.isEmpty) //false
print(numberForName4.count) //3

print(numberForName4["chulsoo"]) //Optional(200)
print(numberForName4["minji"]) //nil

numberForName4["chulsoo"] = 150
print(numberForName4["chulsoo"])

numberForName4["max"] = 999
print(numberForName4["max"])
print(numberForName4.count) //4

print(numberForName4.removeValue(forKey: "yagom")) //
print(numberForName4.count) //3

print(numberForName4)

print(numberForName4["yagom", default: 0]) //"yagom"에 해당하는 값이 없으면 0 반환함


print("\n")
//Set
print("<<Set>>")

var namesSet: Set<String> = Set<String>()
var namesSet2 : Set<String> = []

var namesSet3: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

var numbers = [100, 200, 300]
print(type(of: numbers)) //Set

print(namesSet3.isEmpty)
print(namesSet3.count)

namesSet3.insert("jenny")
print(namesSet3.count)

print(namesSet3.remove("chulsoo"))
print(namesSet3.remove("john"))
print(type(of: namesSet3.remove("john")))

print("\n")

let englishClassStudents: Set<String> = ["john", "chulsoo", "yagom"]
let koreanClassStudents: Set<String> = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]

let intersectSet: Set<String> =  englishClassStudents.intersection(koreanClassStudents) //교집합

let symmetricDiffSet: Set<String> =
    englishClassStudents.symmetricDifference(koreanClassStudents) //여집합의 합(배타적 논리합) 합집합 - 교집합

let unionSet: Set<String> =
    englishClassStudents.union(koreanClassStudents) //합집합

let subtractSet: Set<String> = englishClassStudents.subtracting(koreanClassStudents) //차집합

print(unionSet.sorted())
let arrayTemp = unionSet.sorted() //정렬해서 배열로 반환
print(type(of: arrayTemp)) //Array<String>

//
let bird: Set<String> = ["pigeon", "chicken", "bird"]
let animal: Set<String> = ["Lion", "tiger", "bear"]
let unionAnimal: Set<String> = bird.union(animal)

print(bird.isDisjoint(with: animal))//배타적인지?
print(bird.isSubset(of: animal)) //새가 동물의 부분집합인지?
print(unionAnimal.isSuperset(of: animal)) //동물은 포유류의 전체 집합인지?
print(unionAnimal.isSuperset(of: bird)) //동물은 새의 전체집합인지?

var array: [Int] = [0, 1, 2, 3, 4]
var set: Set<Int> = [0, 1, 2, 3, 4]
var dictionary: [String: Int] = ["a":1, "b":2, "c":3]
var string: String = "string"

print(array.randomElement()) //임의의 요소 반환
print(array.shuffled()) //배열 섞은 후 반환(원본 배열은 그대로 있음)
print(array)
array.shuffle() //원본 배열 뒤섞기
print(array)

print(set.shuffled()) //세트를 뒤섞으면 배열로 반환해 줌
//set.shuffle() //에러, 세트 자체는 못뒤섞음(순서가 없기 때문)
print(dictionary.shuffled()) //딕셔너리를 섞으면 (키, 값)이 쌍을 이루는 튜플의 배열로 반환
print(string.shuffled()) //string 자체도 컬렉션이라 섞기 가능함)

