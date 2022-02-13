import UIKit

// ⬇️ list ⬇️

/*
 
 🎮 Control Flow ✅
 🎮 Control Flow - For-In Loops ✅
 🎮 Control Flow - While Loops ✅
                   - While✅
                   - Repeat-While ✅
 🎮 Control Flow - Conditional Statements ✅
                   - If ✅
                   - Switch ✅
                   - No Implicit Fallthrough ✅
                   - Interval Matching ✅
                   - Tuples ✅
                   - Value Bindings ✅
                   - Where ✅
                   - Compound Cases ✅
 🎮 Control Flow - Control Transfer Statements ✅
                   - Continue ✅
                   - Break ✅
                   - Break in a Loop Statement ✅
                   - Break in a Switch Statement ✅
                   - Fallthrough ✅
                   - Labeled Statements ✅
 🎮 Control Flow - Ealry Exit ✅
 🎮 Control Flow - Checking API Availability ✅

*/

// ⬆️ list ⬆️

// ⬇️ contents ⬇️



/* 🎮 Control Flow */
/* 1️⃣ while
   2️⃣ if
   3️⃣ guard
   4️⃣ switch: interval matches, tuples, and casts
   5️⃣ for-in loop: iterate over arrays, ranges, strings, dictionaries, and other sequeces
 */

/* 🎮 Control Flow - For-In Loops */

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
/* ⚠️ The contents of a Dictionary are inherently unordered, and iterating over them doesn't
   guarantee the order in which they will be retrieved. */

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
    print(answer)
}
 
let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark)
}

let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}
//stride(from:to:by:)

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark)
}
//stride(from:through:by)




/* 🎮 Control Flow - While Loops */
/*
   while evaluates its condtion at the start of each pass through the loop.
   repeat-while evaluates its condition at the end of each pass through the loop.*/


/* 🎮 Control Flow - While Loops - While */
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
//var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print(type(of:board))
print(board.count)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
/* while square < finalSquare {
    //roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    //move by the rolled amount
    square += diceRoll
    if square < board.count {
        print(board[square])
        square += board[square]
        
    }
}
print("Game over!")
*/


/* 🎮 Control Flow - While Loops - Repeat-While */
repeat {
    square += board[square]
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
} while square < finalSquare
print("Game over!")




/* 🎮 Control Flow - Conditional Statements */
/* Swift provides two ways to add conditional branches to your code
   1️⃣ if: evaluate simple conditions with only a few possible outcomes.
   2️⃣ switch: evaluate complex conditions with multiple possible permutations */


/* 🎮 Control Flow - Conditional Statements - If*/
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}

var temperatureInFahrenheit2 = 40
if temperatureInFahrenheit2 <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's not that cold. Wear a t-shirt.”

var temperatureInFahrenheit3 = 90
if temperatureInFahrenheit3 <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit3 >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's really warm. Don't forget to wear sunscreen.”

var temperatureInFahrenheit4 = 72
if temperatureInFahrenheit4 <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit4 >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}


/* 🎮 Control Flow - Conditional Statements - Switch */
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet”

let someCharacter2: Character = "c"
switch someCharacter2 {
case "a":
    print("The first letter of the alphabet")
case "z","c":
    print("\(someCharacter2)")
default:
    print("Some other character")
}


/* 🎮 Control Flow - Conditional Statements - No Implicit Fallthrough */
/* let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a": // ❌ -> Invalid, the case has an empty body
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// This will report a compile-time error.”
// ❌ -> 'case' label in a 'switch' should have at least one executable statement */

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// Prints "The letter A”


/* 🎮 Control Flow - Conditional Statements - Interval Matching */
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn.”


/* 🎮 Control Flow - Conditional Statements - Tuples */
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
// Prints "(1, 1) is inside the box”
/* ⚠️ However, if multiple matches are possible, the first matching case is always used.
  The point (0, 0) would match case (0, 0) first, and so all other matching cases would be ignored. */


/* 🎮 Control Flow - Conditional Statements - Value Bindings */
/* A switch case can name the value or values it matches to temporary constants or variables,
   for use in the body of the case. This behavior is known as value binding,
   because the values are bound to temporary constants or variables within the case’s body. */

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2”


/* 🎮 Control Flow - Conditional Statements - Where */
/* A switch case can use a where clause to check for additional conditions. */
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y”

/* 🎮 Control Flow - Conditional Statements - Compound Cases */
let someCharacter3: Character = "e"
switch someCharacter3 {
case "a", "e", "i", "o", "u":
    print("\(someCharacter3) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter3) is a consonant")
default:
    print("\(someCharacter3) isn't a vowel or a consonant")
}
// Prints "e is a vowel”


let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}
// Prints "On an axis, 9 from the origin"




/* 🎮 Control Flow - Control Transfer Statements */
/* Control transfer statments change the order in which your code is executed,
   by transferring control from one piece of code to another.
   Swift has five control transfer statements:
   1️⃣ continue
   2️⃣ break
   3️⃣ fallthrough
   4️⃣ return
   5️⃣ throw */


/* 🎮 Control Flow - Control Transfer Statements - Continue */
/* The continue statement tells a loop to stop what it's doing and start again at the beginning of the next ineration
   through the loop. It says "I am done with the current loop iteration" without leaving the loop altogether. */

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
// Prints "grtmndsthnklk”


/* 🎮 Control Flow - Control Transfer Statements - Break */
/* The break statement ends execution of an entire control flow statement immediately.
   The break statement can be used inside a switch or loop statement when you want to terminate
   the execution of the switch or loop statement earlier than would otherwise be the case. */
 

/* 🎮 Control Flow - Control Transfer Statements - Break in a Loop Statement */
/* When used inside a loop statement, break ends the loop’s execution immediately
   and transfers control to the code after the loop’s closing brace (}).
   No further code from the current iteration of the loop is executed,
   and no further iterations of the loop are started.”*/


/* 🎮 Control Flow - Control Transfer Statements - Break in a Switch Statement */
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}
// Prints "The integer value of 三 is 3.”


/* 🎮 Control Flow - Control Transfer Statements - Fallthrough */
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Prints "The number 5 is a prime number, and also an integer.”
/* ⚠️“The fallthrough keyword doesn’t check the case conditions for the switch case
   that it causes execution to fall into. The fallthrough keyword simply causes code
   execution to move directly to the statements inside the next case (or default case) block,
   as in C’s standard switch statement behavior. */


/* 🎮 Control Flow - Control Transfer Statements - Labeled Statements */

let finalSquare2 = 25
var board2 = [Int](repeating: 0, count: finalSquare2 + 1)
//var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print(type(of:board2))
print(board2.count)

board2[03] = +08; board2[06] = +11; board2[09] = +09; board2[10] = +02
board2[14] = -10; board2[19] = -11; board2[22] = -02; board2[24] = -08

var square2 = 0
var diceRoll2 = 0

gameLoop: while square2 != finalSquare2 {
diceRoll2 += 1
if diceRoll2 == 7 { diceRoll2 = 1 }
switch square2 + diceRoll2 {
case finalSquare2:
    // diceRoll will move us to the final square, so the game is over
    break gameLoop
case let newSquare where newSquare > finalSquare2:
        // diceRoll will move us beyond the final square, so roll again
    continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square2 += diceRoll2
        square2 += board2[square2]
    }
}
print("Game over!")


/* 🎮 Control Flow - Ealry Exit */
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

greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino.”

/*
   ⚠️ If the guard statement’s condition is met, code execution continues after the guard statement’s closing brace.

   ⚠️ Using a guard statement for requirements improves the readability of your code,
   compared to doing the same check with an if statement.
   It lets you write the code that’s typically executed without wrapping it in an else block,
   and it lets you keep the code that handles a violated requirement next to the requirement. */
 

/* 🎮 Control Flow - Checking API Availability */
   if #available(iOS 10, macOS 10.12, *) {
      // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
      // statements to execute if the APIs are available
   } else {
      // Fall back to earlier iOS and macOS APIs
      // fallback statements to execute if the APIs are unavailable
   }

