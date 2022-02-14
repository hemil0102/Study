import UIKit

// ⬇️ list ⬇️

/*
    ⚙️ Functions ✅
    ⚙️ Functions - Defining and Calling Functions ✅
    ⚙️ Functions - Function Parameters and Return Values ✅
                   - Functions Without Parameters ✅
                   - Functions With Multiple Parameters ✅
                   - Functions Without Return Values ✅
                   - Fuctions with Multiple Return Values ✅
                   - Optional Tuple Return Types ✅
                   - Functions With an Implicit Return ✅
    ⚙️ Functions - Function Argument Labels and Parameter Names ✅
                   - Specifying Argument Labels ✅
                   - Omitting Argument Labels ✅
                   - Default Parameter Values ✅
                   - Variadic Parameters ✅
                   - In-Out Parameters ✅
    ⚙️ Functions - Function Types ✅
                   - Using Function Types ✅
                   - Function Types as Parameter Types ✅
                   - Function Types as Return Types ✅
    ⚙️ Functions - Nested Functions ✅

*/

// ⬆️ list ⬆️

// ⬇️ contents ⬇️



/* ⚙️ Functions */
/* ⚙️ Functions - Defining and Calling Functions */
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person: "Anna"))
// Prints "Hello, Anna!"
print(greet(person: "Brian"))
// Prints "Hello, Brian!”

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
// Prints "Hello again, Anna!”


/* ⚙️ Functions - Function Parameters and Return Values - Functions Without Parameters */
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())
// Prints "hello, world”


/* ⚙️ Functions - Function Parameters and Return Values - Functions With Multiple Parameters */
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
// Prints "Hello again, Tim!”


/* ⚙️ Functions - Function Parameters and Return Values - Functions Without Return Values */
func greet2(person: String) {
    print("Hello, \(person)!")
}
greet2(person: "Dave")
// Prints "Hello, Dave!”
/* ⚠️ Strictly speaking, this version of the greet(person:) function does still return a value,
   even though no return value is defined. Functions without a defined return type return a special value of type Void.
   This is simply an empty tuple, which is written as (). */


/* ⚙️ Functions - Function Parameters and Return Values - Fuctions with Multiple Return Values */
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
// prints "hello, world" and returns a value of 12
printWithoutCounting(string: "hello, world")
// prints "hello, world" but doesn't return a value”

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109



/* ⚙️ Functions - Function Parameters and Return Values - Optional Tuple Return Types */
/* (Int, Int)? or (String, Int, Bool)? */
/* ⚠️ An optional tuple type such as (Int, Int)? is different from a tuple that contains optional types such as (Int?, Int?). With an optional tuple type, the entire tuple is optional, not just each individual value within the tuple. */
 
func minMaxOptional(array: [Int]) -> (min: Int, max: Int)? {
     if array.isEmpty { return nil }
     var currentMin = array[0]
     var currentMax = array[0]
     for value in array[1..<array.count] {
         if value < currentMin {
             currentMin = value
         } else if value > currentMax {
             currentMax = value
         }
     }
     return (currentMin, currentMax)
 }

if let boundsOptional = minMaxOptional(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(boundsOptional.min) and max is \(boundsOptional.max)")
}
// Prints "min is -6 and max is 109”

/* ⚙️ Functions - Function Parameters and Return Values - Functions With an Implicit Return */
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// Prints "Hello, Dave!"

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))
// Prints "Hello, Dave!”




/* ⚙️ Functions - Function Argument Labels and Parameter Names  */
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)


/* ⚙️ Functions - Function Argument Labels and Parameter Names - Specifying Argument Labels */
func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino.”


/* ⚙️ Functions - Function Argument Labels and Parameter Names - Omitting Argument Labels */
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)


/* ⚙️ Functions - Function Argument Labels and Parameter Names - Default Parameter Values */
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12”


/* ⚙️ Functions - Function Argument Labels and Parameter Names - Variadic Parameters */
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers”


/* ⚙️ Functions - Function Argument Labels and Parameter Names - In-Out Parameters */
/* Function parameters are constants by default.
Trying to change the value of a function parameter from within the body of that function results in a compile-time error.
This means that you can’t change the value of a parameter by mistake.
If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended,
define that parameter as an in-out parameter instead.*/

/* You write an in-out parameter by placing the inout keyword right before a parameter’s type.
An in-out parameter has a value that’s passed in to the function, is modified by the function,
and is passed back out of the function to replace the original value.
For a detailed discussion of the behavior of in-out parameters and associated compiler optimizations, see In-Out Parameters. */

/* You can only pass a variable as the argument for an in-out parameter.
You can’t pass a constant or a literal value as the argument, because constants and literals can’t be modified.
You place an ampersand (&) directly before a variable’s name when you pass it as an argument to an in-out parameter,
to indicate that it can be modified by the function. */

/* ⚠️ In-out parameters can’t have default values, and variadic parameters can’t be marked as inout. */
 
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3”

/* ⚠️In-out parameters aren’t the same as returning a value from a function.
 The swapTwoInts example above doesn’t define a return type or return a value, but it still modifies the values of someInt and anotherInt.
 In-out parameters are an alternative way for a function to have an effect outside of the scope of its function body. */


/* ⚙️ Functions - Function Types */
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
// (Int, Int) -> Int
// A function that has two parameters, both of type Int, and that returns a value of type Int.

func printHelloWorld() {
    print("hello, world")
}
// () -> Void


/* ⚙️ Functions - Function Types - Using Function Types */
var mathFunction: (Int, Int) -> Int = addTwoInts
/* Define a variable called mathFunction, which has a type of ‘a function that takes two Int values,
   and returns an Int value.’ Set this new variable to refer to the function called addTwoInts. */

print("Result: \(mathFunction(2, 3))")
// Prints "Result: 5”

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")
// Prints "Result: 6"

let anotherMathFunction = addTwoInts
// anotherMathFunction is inferred to be of type (Int, Int) -> Int”


/* ⚙️ Functions - Function Types - Function Types as Parameter Types */
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// Prints "Result: 8”
// printMathResult(_:_:_:)


/* ⚙️ Functions - Function Types - Function Types as Return Types */
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function”

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// 3...
// 2...
// 1...
// zero!”


/* ⚙️ Functions - Function Types - Nested Functions */
func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward2(input: Int) -> Int { return input + 1 }
    func stepBackward2(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction(backward: currentValue2 > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue2 != 0 {
    print("\(currentValue2)... ")
    currentValue2 = moveNearerToZero2(currentValue2)
}
print("zero!")
// -4...
// -3...
// -2...
// -1...
// zero!”


