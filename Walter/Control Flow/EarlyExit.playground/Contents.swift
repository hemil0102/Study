import UIKit

//Early Exit
//guard 키워드를 이용해 특정 조건을 만족하지 않으면 이 후 코드를 실행하지 않도록 방어코드를 작성.

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

//greet(person: ["name": "John"])
//greet(person: ["name": "Jane", "location": "Cupertino"])

func printMe(me: [String: Bool]) {
    guard let _ = me["isCar"] else {
        return
    }
    
    print("I have a car", terminator: "")
    
    guard let _ = me["isHouse"] else {
        print("I want to have a house")
        return
    }
          
    print(", I have a house")
}
printMe(me: ["":false])
