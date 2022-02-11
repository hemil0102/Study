import UIKit

var greeting = "Hello, playground"

protocol Regulation {
    func swiftBasic(_ effort: Int) -> Void
    func swiftUI(_ moreEffort: Int) -> Void
    func releaseApp() -> String
    
}

class Member: Regulation {
    
    func swiftBasic(_ effort: Int) {
        print("effort: \(effort)")
        print("good base")
    }
    
    func swiftUI(_ moreEffort: Int) {
        print("")
    }
    
    func releaseApp() -> String {
        return "Yaho!"
    }
}

//just practice
