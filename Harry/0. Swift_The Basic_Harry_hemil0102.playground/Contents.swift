import UIKit

// ⬇️ list ⬇️

/*
   ⭐️The Basics
   ⭐️The Basics - Constants and Variables ✅
                  - Type Annotations ✅
                  - Naming Constants and Variables ✅
                  - Printing Constants and Variables ✅
   ⭐️The Basics - Comments ✅
   ⭐️The Basics - Semicolons ✅
   ⭐️The Basics - Integers ✅
                  - Integer Bounds ✅
                  - Int ✅
                  - UInt ✅
   ⭐️The Basics - Floating-Point Numbers ✅
   ⭐️The Basics - Type Safety and Type Inference ✅
   ⭐️The Basics - Numeric Literals ✅
   ⭐️The Basics - Numeric Type Conversion ✅
                  - Integer Conversion ✅
                  - Integer and Floating-Point Conversion ✅
   ⭐️The Basics - Type Aliases ✅
   ⭐️The Basics - Booleans ✅
   ⭐️The Basics - Tuples ✅
   ⭐️The Basics - Optionals ✅
                  - nil ✅
                  - If Statements and Forced Unwrapping ✅
                  - Optional Binding ✅
                  - Implicitly Unwrapped Optionals ✅
   ⭐️The Basics - Error Handling ✅
   ⭐️The Basics - Assertions and PReconditions ✅
                  - Debugging with Assertions ✅
                  - Enforcing Preconditions ✅ ⚠️ */

// ⬆️ list ⬆️



// ⬇️ contents ⬇️
 
/* ⭐️The Basics */
/*     1️⃣ Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development.
       2️⃣ Swift provides its own versions of all fundamental C and Objective-C types.
          (Int, Double, Float, Bool, String, Array, Set, and Dictionary)
       3️⃣ Swift uses variables to store and refer to values by an identifying name.
       4️⃣ Swift also makes extensive use of variables whose values can’t be changed. These are known as constants
       5️⃣ Swift introduces advanced types not found in Objective-C, such as tuples.
       6️⃣ Swift also introduces optional types, which handle the absence of a value.
       7️⃣ Optionals say either “there is a value, and it equals x” or “there isn’t a value at all”.
       8️⃣ Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with. */




/* ⭐️The Basics - Constants and Variables */
/*     1️⃣ The value of a constant can't be changed once it's set, whereas a variable can be set to a different value in the future.
       ⚠️ If a stored value in your code won't change, always decalre it as a constant with the let keyword.
        Use variables only for storing values that need to be able to change. */

let harryEyes = 2
//Declare a new constant called harryEyes, and give it a value of 2.

var harryHeight = 178
//Declare a new variable called harryHeight, and give it an initial value of 178.
//❓왜 상수는 그냥 값을 준다하고 변수는 초기값을 준다고 하는 것일까? (앗아아 깊게 들어가면 안돼 \(ㅇㅁㅇ)/)

var x = 0.0, y = 0.0, z = 0.0
// You can declare multiple constants or variables on a single line, spearated by commas ','


/* ⭐️The Basics - Constants and Variables - Type Annotations */
/*     1️⃣ You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
        Write a type annotation by placing a colon ':' after the constant or variable name,followed by a space, followed by the name of the type to use. */

var welcomeMessage: String
//Declare a variable called welcomeMessage that's of type String
welcomeMessage = "Hello"
var red, green, blue: Double
// Define multiple related variables of the same type on a single line


/* ⭐️The Basics - Constants and Variables - Naming Constants and Variables */
/*
       1️⃣ Constant and variable names can contain almost any character, including Unicode Characters:
       2️⃣ Constant and variable names can't contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and
          box-drawing characters. Nor can they begin with a number, although numbers may be included elsewhere within the name. */

let 🔥 = "passion"
let 안녕하세요 = "hello"
print(안녕하세요, 🔥)
print(type(of: 안녕하세요)) //Returns the type of a value.
// let 1one = "2"
// ❌ -> error
// let W+H+J = "hey"
// ❌ -> '+' is not a postfix unary operator

var friendlyWelcome = "Hello, Walter & Jongmin!"
friendlyWelcome = "안녕하세요, 월터 & 종민"
print(friendlyWelcome)
// change the value of an existing variable to another value of a compatible type.

let itCannotChanged = "Faith"
// itCannotChanged = "Fake"
// ❌ -> Cannot assign to value: 'itCannotChanged' is a 'let' constant

print("I am so happy that we can practice Swift together, \(friendlyWelcome)")
// ⚙️(Function) - print(_:separator:terminator:)




/* ⭐️The Basics - Comments */
 
 // This is a Comment
 /* This is also a comment
    but is written over multiple lines */
 /* This is the start of the first multiline commnet.
 /* This is the second, nested multiline commnet. */
    This is the end of the first multiline commnet. */




/* ⭐️The Basics - Semicolons */
/*     Unlike many other languages, Swift doesn't require you to write to a semicolon(;) after each statement in your code,
       although you can do so if you wish. However, semicolons are required if you want to write multiple separate statements */

let hallabong = "🍊"; print(hallabong)
// let threeHallabongs = "🍊🍊🍊" print(threeHallabongs)
// ❌ -> 'Consecutive statements' on a line must be separated by ';'




/* ⭐️The Basics - Integers */
/*     Integers are whole numbers with no fractional component,
       such as 42 and -23. Integers are either signed (positive, zero or negative) or unsigned (positve or zero). */


/* ⭐️The Basics - Integers - Integer Bounds */
let minValue = UInt8.min
// minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max
// maxValue is equal to 255, and is of type UInt8


/* ⭐️The Basics - Integers - Int */
print("The range of Int8: \(Int8.min) ~ \(Int8.max) ")
print("The range of Int16: \(Int16.min) ~ \(Int16.max) ")
print("The range of Int32: \(Int32.min) ~ \(Int32.max) ")
print("The range of Int64: \(Int64.min) ~ \(Int64.max) ")
// let overflow: Int8 = 128
// ❌ -> integer literal '128' overflows when stored into 'Int8'


/* ⭐️The Basics - Integers - UInt */
print("The range of UInt8: \(UInt8.min) ~ \(UInt8.max) ")
print("The range of UInt16: \(UInt16.min) ~ \(UInt16.max) ")
print("The range of UInt32: \(UInt32.min) ~ \(UInt32.max) ")
print("The range of UInt64: \(UInt64.min) ~ \(UInt64.max) ")
// let overflow: UInt8 = -1
// ❌ -> Negative interger '-1' overflows when stored into unsigned type 'UInt8'




/* ⭐️The Basics - Floating-Point Numbers */
/*     Floating-point numbers are numbers with a fractional component, such as 3.14159, 0.1, and -273.15 */
var realNumberFloat: Float = 3.14
var realNumberDouble: Double = -3.14
let floatNumber: Float = 1.1234567890123456789012345678901234567890
//the precision of Float can be as little as 6 decimal digits, and the last digit will be rounded off.
let doubleNumber: Double = 1.1234567890123456789012345678901234567890
//the precision of Double has at least 15 decimal digits, and the last digit will be rounded off.
let realNumber = 1.1234567890123456789012345678901234567890
//double is preferred.
print(type(of: realNumber))




/* ⭐️The Basics - Type Safety and Type Inference */
/*     1️⃣ A type safe language encourages you to be clear about the types of values your code can work with.
          If part of your code requires a String, you can't pass it an Int by mistake.
       2️⃣ Type safety performs 'type check' when compiling your code and flags any mismatched types as errors.
          This enables you to catch and fix errors as ealry as possible in the development process.
       3️⃣ Type-checking helps you avoid errors when you're working with different types of values.
          Type Inference enables a compiler to deduce the type of a particular expression automatically
          when it compiles your code, simply by examing the values you provide.
       4️⃣ Type inference is particularly useful when you declare a contant or variable with an intial value.
          This is often done by assigning 'a literal value (or literal)' to the constant or variable at the point that you declare it.
          (A literal value is a value that appears directly in your source code, such as 42 and 3.14159 in the examples below. */

let exercisingTime = 2
// exercisingtime is inferred to be of type Int
let pi = 3.14159
print(type(of: pi))
// if you don't specify a type for a floating-point literal, Swift infers that you want to create a Double.
let anotherPi = 3 + 0.14159
print(type(of: anotherPi))
// interger + double will be double type.




/* ⭐️The Basics - Numeric Literals */

let decimalHeight = 178
let binaryInteger = 0b10110010 //with a 0b prefix
let octalInteger = 0o262       //with a 0o Prefix
let hexadecimalInteger = 0xB2  //with a 0x prefix

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0  //(12 + 3/16) * 2^0
let hexadecimalDouble2 = 0xAB.CDp4 //(10*16^1 + 11*16^0 + 12*16^-1 + 13*16^-2) * 2^4

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1




/* ⭐️The Basics - Numeric Type Conversion */
/* ⭐️The Basics - Numeric Type Conversion - Integer Conversion */
let cannotBeNegative: UInt8 = 1
//UInt8 cant sotre negative numbers, and so this will report an erro
// let tooBig: Int8 = Int8.max + 1
// ❌ -> Int8 can't sotre a number lager than its maximum value,
// ❌ -> and so this will also report an error

let twoThousand: UInt16 = 2_000
let one:UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

/* ⭐️The Basics - Numeric Type Conversion - Integer and Floating-Point Conversion*/

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi) //it isn't rounded off




/* ⭐️The Basics - Type Aliases */
/* Type aliases define an alternative name for an existing type */

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
print(type(of: maxAmplitudeFound))




/* ⭐️The Basics - Booleans */

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

/* let i = 1
if i {
    
}*/
// ❌ -> Type 'int' cannot be used as a boolean; test for '!=0' instead

let i = 1
if i == 1 {
    
}




/* ⭐️The Basics - Tuples */
/* Tuples group multiple values into a single compound value.
 The values within a tuple can be of any type and don't have to be of the same type as each other */

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
//Prints "The status code is 404"
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
//Prints "The status code is 404
print("The status message is \(http404Error.1)")
//Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
//Prints "The status code is 200"
print("The status message is \(http200Status.description)")




/* ⭐️The Basics - Optionals */
/* You use optionals in situations where a value may be absent.
   An Optional represents two possibilities:
   (1) Either there is a value, and you can unwrap the optional to access that value,
   (2) or there isn't a value at all */

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(type(of:convertedNumber))
// Int to String
let possibleNumber2 = 123
let convertedNumber2 = String(possibleNumber2)
print(type(of:convertedNumber2))
// String to Int❓Why it isn't inferred to be of type "String?", or "optional Int"


/* ⭐️The Basics - Optionals - nil */

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual In value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
/* ⚠️ You can't use nil with non-optional constants and variables.
      If a constant or variable in your code needs to work with the absence of a value under certain conditions,
      always declare it as an optional value of the appropriate type. */

var surveyAnswer: String?
print(type(of:surveyAnswer))
//surveyAnswer is automatically set to nil


/* ⭐️The Basics - Optionals - If Statements and Forced Unwrapping */
/* Forced Unwrapping, an excalmation point(!) to the end of the optional's name,
   it means "I know that this optional definitely has a value; please use it.*/

if convertedNumber != nil {
    print("It has a value")
}

if convertedNumber != nil {
    print("It has a value \(convertedNumber!)")
}
/* Trying to use ! to access a nonexistent optional value triggers a runtime error.
   Always make sure that an optional contains a non-nil value before using ! to force-unwrap its value */


/* ⭐️The Basics - Optionals - Optional Binding */
/* You use optional biding to find out whether an optional contains a value, and if so,
   to make that value available as a temporary constant or variable.
 
   Optional binding can be used with if and while satements to check for a value inside an optional,
   and to extract that value into a constant or variable, as part of a single action.*/

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
/* If the optional Int returned by In(possibleNumber) contains a value,
   set a new constant called actualNumber to the value contained in the optional." */
// print(actualNumber)
// ❌ -> Error! actualNumber is a temporary constant to extract a value from an optional constant

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100
{
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

/* Constants and variables created with optional binding in an if statement are available
   only within the body of the if statement. In contrast, the constants and variables
   created with a guard statement are available in the lines of code that follow the
   'guard statement', as described in Early Exit */


/* ⭐️The Basics - Optionals - Implicitly Unwrapped Optionals */
/* Sometimes it's clear from a program's structure that an optional will always have a vlue,
   after that value is first set. In these case, it's useful to remove the need to check and
   unwrap the optional's value every time it's accessed because it can be safely assumed to have
   a value all of the time
 
   These kinds of optionals are defined as implicitly unwrapped optionals, You writh an implicitly
   unwrapped optional by placing an exclamation point (String!) rather than a question mark (String?)
   after the ype that you want to make optional.
 
   the primary use of implicitly unwrapped optionas in Swift is during class initialization.
 */

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString
//has an explicit, non-optional type of String
print(type(of:assumedString))
print(type(of:implicitString))

let optionalString = assumedString
//has nothing explicit, so it will be type of Optional String
print(type(of:optionalString))

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}
//Optional Binding
/* ⚠️ Dont' use an implicitly unwrapped optional when there's a possibility of a variable becoming
   nil at a later point. Always use a normal optional type if you need to check for a nil value
   during the lifetime of a variable */


/* ⭐️The Basics - Optionals - Error Handling */
/* You use error handling to respond to error conditions your program may encounter
   during execution.
 
   In contrast to optionals, which can use the presence or absence of a value to
   communicate success or failure of a 'function'.
 
   When a function encounters an error condition, it throws an error.
   That function's caller can then catch the error and respond approprately.
 */

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

func makeASandwich() throws {
    //...
}

/*
do {
    try makeASandwich() //if error occurs? go to catch (1) or (2), if there is no error, then call (3)
    eatASandwich() //(3)
} catch SandwichError.outOFCleanDishes { //(1)
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) { //(2)
    buygroceries(ingredients)
}
*/


/* ⭐️The Basics - Optionals - Assertions and PReconditions */
/* ⭐️The Basics - Optionals - Debugging with Assertions */

let age = 2
// assert(age >= 0, "A Person's age can't be less than zero.")
// ❌ -> Assertion faile: A person's age can't be less than zero.

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}


/* ⭐️The Basics - Optionals - Enforcing Preconditions */
/* Use a preconditon whenever a condtion has the potential to be false,
   but must definitely be true for your code to continue execution.*/

// precondition(index > 0, "Index must be greater than zero.")

// additional supplement required, less example
