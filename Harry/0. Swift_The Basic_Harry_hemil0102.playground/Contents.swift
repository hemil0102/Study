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
   ⭐️The Basics - Numeric Literals
   ⭐️The Basics - Numeric Type Conversion
                  - Integer Conversion
                  - Integer and Floating-Point Conversion
   ⭐️The Basics - Type Aliases
   ⭐️The Basics - Booleans
   ⭐️The Basics - Tuples
   ⭐️The Basics - Optionals
                  - nil
                  - If Statements and Forced Unwrapping
                  - Optional Binding
                  - Implicitly Unwrapped Optionals
   ⭐️The Basics - Error Handling
   ⭐️The Basics - Assertions and PReconditions
                  - Debugging with Assertions
                  - Enforcing Preconditions */

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
// -> error
// let W+H+J = "hey"
// -> '+' is not a postfix unary operator

var friendlyWelcome = "Hello, Walter & Jongmin!"
friendlyWelcome = "안녕하세요, 월터 & 종민"
print(friendlyWelcome)
// change the value of an existing variable to another value of a compatible type.

let itCannotChanged = "Faith"
// itCannotChanged = "Fake"
// -> Cannot assign to value: 'itCannotChanged' is a 'let' constant

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
// -> 'Consecutive statements' on a line must be separated by ';'




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
// -> integer literal '128' overflows when stored into 'Int8'


/* ⭐️The Basics - Integers - UInt */
print("The range of UInt8: \(UInt8.min) ~ \(UInt8.max) ")
print("The range of UInt16: \(UInt16.min) ~ \(UInt16.max) ")
print("The range of UInt32: \(UInt32.min) ~ \(UInt32.max) ")
print("The range of UInt64: \(UInt64.min) ~ \(UInt64.max) ")
// let overflow: UInt8 = -1
// -> Negative interger '-1' overflows when stored into unsigned type 'UInt8'




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


<<<<<<< HEAD
<<<<<<< HEAD


/* ⭐️The Basics - Numeric Literals */

let decimalHeight = 178
let binaryInteger = 0b10110010 //with a 0b prefix
let octalInteger = 0o262       //with a 0o Prefix
let hexadecimalInteger = 0xB2  //with a 0x prefix

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0  //(12 + 3/16) * 2^0
let hexadecimalDouble2 = 0xAB.CDp4 //(10*16^1 + 11*16^0 + 12*16^-1 + 13*16^-2) * 2^4
=======
>>>>>>> 1910d2938495a516193c4cbd35b40c1de8da10b6
=======
>>>>>>> 1910d2938495a516193c4cbd35b40c1de8da10b6
