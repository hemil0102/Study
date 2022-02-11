import UIKit

// ⬇️ list ⬇️

/*
   ⭐️The Basics
   ⭐️The Basics - Constants and Variables
                  - Type Annotations
                  - Naming Constants and Variables
                  - Printing Constants and Variables
   ⭐️The Basics - Comments
   ⭐️The Basics - Semicolons
   ⭐️The Basics - Integers
                  - Integer Bounds
                  - Int
                  - UInt
   ⭐️The Basics - Floating-Point Numbers
   ⭐️The Basics - Type Safety and Type Inference
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
 
/* ⭐️The Basics
     1️⃣ Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development.
     2️⃣ Swift provides its own versions of all fundamental C and Objective-C types.
        (Int, Double, Float, Bool, String, Array, Set, and Dictionary)
     3️⃣ Swift uses variables to store and refer to values by an identifying name.
     4️⃣ Swift also makes extensive use of variables whose values can’t be changed. These are known as constants
     5️⃣ Swift introduces advanced types not found in Objective-C, such as tuples.
     6️⃣ Swift also introduces optional types, which handle the absence of a value.
     7️⃣ Optionals say either “there is a value, and it equals x” or “there isn’t a value at all”.
     8️⃣ Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with. */



/* ⭐️The Basics - Constants and Variables
     1️⃣ The value of a constant can't be changed once it's set, whereas a variable can be set to a different value in the future.
     ⚠️ If a stored value in your code won't change, always decalre it as a constant with the let keyword.
        Use variables only for storing values that need to be able to change. */

let harryEyes = 2      //Declare a new constant called harryEyes, and give it a value of 2.
var harryHeight = 178  //Declare a new variable called harryHeight, and give it an initial value of 178.
                       //❓왜 상수는 그냥 값을 준다하고 변수는 초기값을 준다고 하는 것일까? (앗아아 깊게 들어가면 안돼 \(ㅇㅁㅇ)/)

var x = 0.0, y = 0.0, z = 0.0 // You can declare multiple constants or variables on a single line, spearated by commas ","



/* ⭐️The Basics - Constants and Variables - Type Annotations
     1️⃣ You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
        Write a type annotation by placing a colon ":" after the constant or variable name,followed by a space, followed by the name of the type to use. */

var welcomeMessage: String //Declare a variable called welcomeMessage that's of type String
welcomeMessage = "Hello"
var red, green, blue: Double // Define multiple related variables of the same type on a single line



/* ⭐️The Basics - Constants and Variables - Naming Constants and Variables
     1️⃣ Constant and variable names can contain almost any character, including Unicode Characters:
     2️⃣ Constant and variable names can't contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and
        box-drawing characters. Nor can they begin with a number, although numbers may be included elsewhere within the name.
        ❓
*/

let 🔥 = "passion"
let 안녕하세요 = "hello"
print(안녕하세요, 🔥)
print(type(of: 안녕하세요)) //Returns the dynamic type of a value.
// let 1one = "2" -> error
// let W+H+J = "hey" -> '+' is not a postfix unary operator

