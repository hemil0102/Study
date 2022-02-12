import UIKit

// ⬇️ list ⬇️

/*
   🤖Basic Operators ✅
   🤖Basic Operators - Terminology ✅
   🤖Basic Operators - Assignement Operator ✅
   🤖Basic Operators - Arithmetic Operator ✅
                       - Remainder Operator ✅
                       - Unary Minus Operator ✅
                       - Unary Plus Operator ✅
   🤖Basic Operators - Compound Assignment Operators ✅
   🤖Basic Operators - Comparion Operators ✅
   🤖Basic Operators - Ternary Conditional Operator ✅
   🤖Basic Operators - Nil-Coalescing Operator ✅
   🤖Basic Operators - Range Operators ✅
                       - Closed Range Operator ✅
                       - Half-Open Range Operator ✅
                       - One-Sided Ranges ✅
   🤖Basic Operators - Logical Operators ✅
                       - Logical NOT Operator ✅
                       - Logical AND Operator ✅
                       - Logical OR Operator ✅
                       - Combining Logical Operators ✅
                       - Explicit Parentheses ✅
*/

// ⬆️ list ⬆️

/* ⬇️ contents ⬇️ */



/* 🤖Basic Operators */
/* 1️⃣ An operator is a special symbol or phrase that you use to check, change or
   combine values.
   2️⃣ The assignment operator (=) doesn't return a value, to prevent it from being
   mistankenly used when the equal to operator (==) is intended.
   3️⃣ Arithmetic operators (+, -, *, /, % and so forth) detect and disallow value
   overflow, to avoid unexpected results when working with numbers that become larger
   or smaller than allowed value range of the ype that stores them. (overflow operator)
   4️⃣ Swift also provides range operators such as a..<b and a...b,
   as a shorcut for expressing a range of values.
   5️⃣ Adnvanced Operators covers Swift's advanced operators, and describes how to
   define your own custom operators and implement the standard operators for your own
   custom types. */




/* 🤖Basic Operators - Teminology */
/* Operators are unary, binary, or ternary:
   1️⃣ Unary operators operate on a single target (such as -a).
   Unary prefix operators appear immediately before their target (such as !b),
   and Unary postfix operators appear immediately after their target (such as c!).
 
   2️⃣ Binary operators operate on two targets (such as 2 + 3) and are infix because
   they appear in between their two targets.
 
   3️⃣ Ternary operators operate on three targets. Like C,
   Swift has only one ternary operator, the ternary conditional operator (a ? b : c).*/




/* 🤖Basic Operators - Assignement Operator */
/* The assignment operator (a = b) initializes or updates the value of
   a with the value of b: */

let b = 10
var a = 5
print(a)
a = b
print(a)
 
//tuple
let (x, y) = (1, 2)
print(x)
print(y)

//assignment operator in Swift doesn't itself return a value.
/* if x = y {
    //This isn't valid, because x = y doesn't return a value.
} */




/* 🤖Basic Operators - Arithmetic Operator */
/* 1️⃣ Addition (+)
   2️⃣ Subtraction (-)
   3️⃣ Multiplication (*)
   4️⃣ Division (/)
 */

let three = 1 + 2
let two = 5 - 3
let six = 2 * 3
let four = 10.0/2.5

// The addition operator is also for String concatenation:
var greetings = "Hello" + "World"

// var what = greetings - "Hello"
// ❌ -> binary '-' cannot be applied to two 'string' operands


/* 🤖Basic Operators - Arithmetic Operator - Remainder Operator */
/* The remainder operaotr (a % b) works out how many multiples of b will fit inside a and returns the value that's left over
   (known as the remainder)
   ⚠️ The remainder operator (%) is also known as a modulo operator in other languages.H
   However, its behavior in Swift for negative numbers means that, stricly speaking, it's a remainder rather than a modulo operation.
 */

let positveRemainder = 9 % 4 // equals 1, a = (b * some multiplier) + remainder, 9 = 4 * 2 + 1
let negativeRemainder = -9 % 4 // equals -1, -9 = (4 x -2) + -1
let guessWhatRemainder = 9 % -4 // equals 1, the sign of b is ignored for negative values of b.


/* 🤖Basic Operators - Arithmetic Operator - Unary Minus Operator */
/* The sign of a mumeric value can be toggled using a prefixed -, known as the unary minus operator */
let threeUnary = 3
let minusThree = -threeUnary
let plusThree = -minusThree


/* 🤖Basic Operators - Arithmetic Operator - Unary Minus Operator */
/* The unary plus operator (+) simply returns the value it operates on, withou any change */
let minusSix = -6
let alsoMinusSix = +minusSix




/* 🤖Basic Operators - Compound Assignment Operators */
/*
   For information about the operators provided by the Swift standard library,
   https://developer.apple.com/documentation/swift/swift_standard_library/operator_declarations
*/
  
var abc = 1
abc += 2
// a is now equal to 3




/* 🤖Basic Operators - Comparion Operators */
/* 1️⃣ Equal to (a == b)
   2️⃣ Not equal to (a != b)
   3️⃣ Greather than (a > b)
   4️⃣ Less than (a < b)
   5️⃣ Greater than or equal to (a >= b)
   6️⃣ Less than or equal to (a <= b)
   ⚠️ Swift also provides two identity operators (=== and !==), which you use to test whether two object references both
   refer to the same object instance. For more information, see Identity Operators.
 */

// Each of the comparison operators returns a Bool value to indicate whether or not the statement is true:
   1 == 1 // 1 is equal to 1
   2 != 1 // 2 isn't equal to 1
   2 > 1  // 2 is greater than 1
   1 < 2  // 1 is less than 2
   1 >= 1 // 1 is greater than or equal to 1
   2 <= 1 // 2 isn't less than or equal to 1

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't reconize you")
}

//Tuples, Tuples are compared from left to right
(1, "zebra") < (2, "apple") // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")  // true because 3 is equal to 3, and "apple" is less than "bird
(4, "dog") == (4, "dog")    // true because 4 is equal to 4, and "dog" is equal to "dog"

("blue", -1) < ("purple", 1) //Ok, evaluates to true
//("blue", false) < ("purple", true)
// ❌ -> Error because < can't compare Boolean values
/* ⚠️ The swift stanndard library includes tuple comparison operators for tuples with fewer than seven elements
   To compare tuples with seven or more elements, you must implement the comparison operators yourself */




/* 🤖Basic Operators - Ternary Conditional Operator */
/* The ternary conditional operator is a special operator with three parts,
   which takes the form 'question ? answer 1 : answer 2'
   if question is true, it evaluates answer1 and returns its value
   if question is false, it evaluates answer2 and returns its value */

/* if question {
    answer1
} else {
    answer2
} */

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// ⬆️ same ⬇️
let contentHeightIf = 40
let hasHeaderIf = true
let rowHeightIf : Int
if hasHeaderIf {
    rowHeightIf = contentHeightIf + 50
} else {
    rowHeightIf = contentHeightIf + 20
}




/* 🤖Basic Operators - Nil-Coalescing Operator */
/* The nil-coalescing operator (a ?? b) unwraps an optional a if it contain a value or returns a default value b if a is nil
   The expression a is always of an optional type. The experession b must match the type that's stored inside a. */

//The nil-coalescing operator is shorthand for the code below
let actionThink: Int? = nil
let reality = 0
actionThink != nil ? actionThink! : reality // a != nil ? a! : b

// a ?? b
let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName




/* 🤖Basic Operators - Range Operators */
/* Swift includes several range operators, which are shortcuts for expressing a range of values */


/* 🤖Basic Operators - Range Operators - Closed Range Operator */

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}


/* 🤖Basic Operators - Range Operators - Half-Open Range Operator */

let names = ["Jongmin", "Walter", "Harry"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}


/* 🤖Basic Operators - Range Operators - One-sided Ranges */

for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names [..<2] {
    print(name)
}

let range = ...5
range.contains(7) //false
range.contains(4) //true
range.contains(-1) // true




/* 🤖Basic Operators - Logical Operators */
/* Logical operators modify or combine the Boolean logic values true and false.
   Swift supports the three standard logical operators found in C-based languages:
   1️⃣ Logical NOT (!a)
   2️⃣ Logical AND (a && b)
   3️⃣ Logical OR (a || b)
*/

/* 🤖Basic Operators - Logical Operators - Logical NOT Operator */
/* The logical NOT operator (!a) inverts a Boolean value so that true becomes false, and false becomes true. */

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}


/* 🤖Basic Operators - Logical Operators - Logical AND Operator */
/* The logical AND operator (a && b) creates logical expressions where both values must be true for the overall
   expression to also be true.
  
   If either value is false, the overall expression will also be false. In fact, if the first value is false,
   the second value won't even be evaluated, because it can't possibly make the overall expression equate to true.
   This known as short circuit evaluation. */

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
   print("Welcome!")
} else {
   print("ACCESS DENIED")
}


/* 🤖Basic Operators - Logical Operators - Logical OR Operator */
/* The logical OR operator (a || b) is an infix operator mad from two adjacent pipe character. You use it to create
   logical expressions in which only one of the two values has to be true for the overall expression to be ture. */

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


/* 🤖Basic Operators - Logical Operators - Combining Logical Operators */
/* You can combine multiple logical operators to create longer compund expressions */

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

/* ⚠️ The Swift logical operators && and || are left-associative, meaning that compund expressions with multiple logical operatos
   evaluate the leftmost subexpression first. */

 
/* 🤖Basic Operators - Logical Operators - Explicit Parentheses */
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
 
