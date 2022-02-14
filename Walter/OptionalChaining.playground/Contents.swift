import UIKit

/**
 옵셔널 체이닝(Optional Chaining)
 값이 nil 인지 아닌지 확인하는 것.
 */
class Person {
    var residence: Residence?
}

class Person2 {
    var residence: Residence2?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person() //인스턴스 생성시 옵셔널 기본값인 nil로 초기화됨
//let roomCount = john.residence!.numberOfRooms       //언래핑할 값이 없기 때문에 강제언래핑(!) 사용시, 오류

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s)")
} else {
    print("Unable to retrieve the number of rooms")
}

//numberOfRooms 는 옵셔널이 아니지만 이 값에 접근하기 위해 사용했던 residence가 옵셔널이기 때문에 최종 값은 옵셔널이 됨
john.residence = Residence()        //이제 nil이 아닌 Residence 인스턴스를 가짐
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s)")  //nil이 아니기에 1을 반환
} else {
    print("Unable to retrieve the number of rooms")
}

/**
 옵셔널 체이닝을 위한 모델 클래스 정의(Defining Model Classes for Optional Chaining)
 여러 level로 사용할 수 있음(multilevel optional chaining)
 */
class Residence2 {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}

/**
 옵셔널 체이닝을 통한 프로퍼티의 접근(Accessing Properties Through Optional Chaining)
 */
let walter = Person2()
if let roomCount = walter.residence?.numberOfRooms {
    print("Walter's residence has \(roomCount) room(s)")
} else {
    print("Unable to retrieve the number of rooms.")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
walter.residence?.address = someAddress     //residence가 nil이기 때문에 오른쪽 항은 아예 실행되지 않는다.

// 실행되지 않는 다는 것을 검증.
func createAddress() -> Address {
    print("Function was called.")
    let someAddress = Address()
    someAddress.buildingNumber = "29"
    someAddress.street = "Acacia Road"
    
    return someAddress
}
walter.residence?.address = createAddress()

/**
 옵셔널 체이닝을 통한 메소드 호출(Calling Methods Through Optioanl Chaining)
 옵셔널 체이닝으로 메소드를 호출할 수 있음
 함수나 메서드는 리턴 값이 없는 경우, 암시적으로 Void라는 값을 가짐
 때문에, 옵셔널 체이닝에서 호출되면, 반환값은 Void가 아닌 Void?가 됨
 */
if walter.residence?.printNumberOfRooms() != nil {
    print("It was possible to print the number of rooms")
} else {
    //반환값이 없지만, 옵셔널 체이닝을 통해 Void? 값을 반환함. 따라서 nil인지 비교 가능.
    print("It was not possible to print the number of rooms")
}

if (walter.residence?.address = someAddress) != nil {
    print("It was possible to print the number of rooms")
} else {
    //반환값이 없지만, 옵셔널 체이닝을 통해 Void? 값을 반환함. 따라서 nil인지 비교 가능.
    print("It was not possible to print the number of rooms")
}

/**
 옵셔널 체이닝을 통한 서브스크립트 접근(Accessing Subscripts Through Optional Chaining)
 옵셔널 체이닝을 이용해 옵셔널 값을 서브스크립트로 접근 가능
 서브스크립트로 접근하기 위해서는 []괄호 전에 물음표(?) 기호를 붙여서 사용.
 */
//서브스크립트를 이용해 rooms에서 첫 rooms의 name을 요청. walter.residence가 nil이기에 접근은 실패.
if let firstRoomName = walter.residence?[0].name {
    print("The first room name is \(firstRoomName)")
} else {
    print("Unable to retrieve the first room name")
}

// 아래 코드는, Residence 인스턴스를 할당하면 residence 서브스크립트를 사용할 수 있음.
let walterHouse = Residence2()
walterHouse.rooms.append(Room(name: "Living Room"))
walterHouse.rooms.append(Room(name: "Kitchen"))
walter.residence = walterHouse

if let firstRoomName = walter.residence?[0].name {
    print("The first room name is \(firstRoomName)")
} else {
    print("Unable to retrieve the first room name")
}

/**
 옵셔널 타입의 서브스크립트 접근(Accessing Subscripts of Optional Type)
 
 */
