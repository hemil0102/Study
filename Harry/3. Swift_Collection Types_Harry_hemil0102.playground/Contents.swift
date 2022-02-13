import UIKit

// ⬇️ list ⬇️

/*
 📚 Collection Types ✅
 📚 Collection Types - Mutability of Collections ✅
 📚 Collection Types - Arrays ✅
                       - Arry Type Shorthand Syntax ✅
                       - Creating an Empty Array ✅
                       - Creating an Array with a Default Value ✅
                       - Creating an Array by Adding Two Arrays Together ✅
                       - Creating an Array with an Array Literal ✅
                       - Accessing and Modifying an Array ✅
                       - Iterating Over an Array ✅
 📚 Collection Types - Sets ✅
                       - Hash Values for Set Types ✅
                       - Set Type Syntax ✅
                       - Creating and Initializing and Empty Set ✅
                       - Creating a Set with an Array Literal ✅
                       - Accessing and Modifying a Set ✅
                       - Iterating Over a Set ✅
 📚 Collection Types - Performing Set Operations ✅
                       - Fundamental Set Operations ✅
                       - Set Membership and Equality ✅
 📚 Collection Types - Dictionaries ✅
                       - Dictionary Type Shorthand Syntax ✅
                       - Creating an Empty Dictionary ✅
                       - Creating a Dictionary with a Dictionary Literal ✅
                       - Accessing and Modifying a Dictionary ✅
                       - Iterating Over a Dictionary ✅
*/

// ⬆️ list ⬆️

// ⬇️ contents ⬇️



/* 📚 Collection Types */
/* ⚠️ Swift's array, set, and dictionary types are implemented as generic collection.
   >> Generics
   “Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to
    requirement that you define.
    You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.”
*/




/* 📚 Collection Types - Mutability of Collections */
/* If you create an array, a set, or a dictionary, and assign it to a variable, the collection that's created will be mutable.
   This means that you can change (or mutable) the collection after it's created by adding, removing, or changing items in
   the collection. If you assign an array, a set, or a dictionary to a constant, that collection is immutable, and its size
   and contents can't be changed. */


 
   
/* 📚 Collection Types - Arrays */
/* An array stores values of the same type in an orederd list.
   The same value can appear in an array multiple times at different positions. */


/* 📚 Collection Types - Arrays - Array Type Shorthand Syntax */
/* The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed
   to store. You can also write the type of an array in shorthand form as [Element]. */


/* 📚 Collection Types - Arrays - Creating an Empty Array */
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

/* 📚 Collection Types - Arrays - Creating an Array with a Default Value */
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]”

/* 📚 Collection Types - Arrays - Creating an Array by Adding Two Arrays Together */
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]”

/* 📚 Collection Types - Arrays - Creating an Array with an Array Literal */
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items”
var shoppingList2 = ["Eggs", "Milk"]

/* 📚 Collection Types - Arrays - Accessing and Modifying an Array */
print("The shopping list contains \(shoppingList.count) items.")
// Prints "The shopping list contains 2 items.”

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
// Prints "The shopping list isn't empty.”

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items

for item in shoppingList {
    print(item)
}

var firstItem = shoppingList[0]
// firstItem is equal to "Eggs”
// ⚠️ The first item in the array has an index of 0, not 1. Arrays in Swift are always zero-indexed.

shoppingList[0] = "Six eggs"
// the first item in the list is now equal to "Six eggs" rather than "Eggs”

for item in shoppingList {
    print(item)
}

shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items”

for item in shoppingList {
    print(item)
}

shoppingList.insert("Maple Syrup", at: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list”

for item in shoppingList {
    print(item)
}

let mapleSyrup = shoppingList.remove(at: 0)
// the item that was at index 0 has just been removed
// shoppingList now contains 6 items, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string”

for item in shoppingList {
    print(item)
}

firstItem = shoppingList[0]
// firstItem is now equal to "Six eggs”


let apples = shoppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the apples constant is now equal to the removed "Apples" string”

for item in shoppingList {
    print(item)
}

/* 📚 Collection Types - Arrays - Iterating Over an Array */

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}




/* 📚 Collection Types - Sets */
/* A set stores distinct values of the same type in a collection with no defined ordering.
   You can use a set instead of an array when the order of items isn't important,
   or when you need to ensure that an item only appears once
   ⚠️ Swift's Set type is bridged to Foundation's NSSet class.
   >> Bridging Between Set and NSSet
*/


/* 📚 Collection Types - Sets - Hash Values for Set Types */
/* 1️⃣ A type must be hasable in order to be stored in a set-that is,
   the type must provide a way to compute a hash value for itself.
   A hash value is an Int value that's the same for all objects that compare equally,
   such that if a == b, the hash value of a is equal to th hash value b.
 
   2️⃣ All of Swift's basic types (such as String, Int, Double, and Bool) are hashable by default,
   and can be used as set value types or dictionary key types.
   Enumeration case values without associated values are also hashable by default.
   >> Hashable, Protocols
*/


/* 📚 Collection Types - Sets - Set Type Syntax */
/* The type of a Swift set is written as Set<Element>,
 where Element is the type that the set is allowed to store.
 There is no shorthand form */


/* 📚 Collection Types - Sets - Creating and Initializing and Empty Set */
var letters = Set<Character>()
print("letters is of type set<Character> with \(letters.count) items.")
print(type(of:letters))

letters.insert("a")
// letters now contains 1 value of type Character
print(type(of:letters))

letters = []
// letters is now an empty set, but is still of type Set<Character>”
print(type(of:letters))


/* 📚 Collection Types - Sets - Creating a Set with an Array Literal */
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print(type(of:favoriteGenres))
var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]


/* 📚 Collection Types - Sets - Accessing and Modifying a Set */
print("I have \(favoriteGenres.count) favorite music genres.")
// Prints "I have 3 favorite music genres.

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// Prints "I have particular music preferences.

favoriteGenres.insert("Jazz")
// favoriteGenres now contains 4 items”

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// Prints "Rock? I'm over it.”

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Prints "It's too funky in here.”


/* 📚 Collection Types - Sets - Iterating Over a Set */
for genre in favoriteGenres {
    print("\(genre)")
}
// Classical
// Jazz
// Hip hop”

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
// Classical
// Hip hop
// Jazz”


/* 📚 Collection Types - Sets - Performing Set Operations */


/* 📚 Collection Types - Sets - Fundamental Set Operations */
/* 1️⃣ Use the intersection(_:) method to create a new set with only the values common to both sets.
   2️⃣ Use the symmetricDifference(_:) method to create a new set with values in either set, but not both.
   3️⃣ Use the union(_:) method to create a new set with all of the values in both sets.
   4️⃣ Use the subtracting(_:) method to create a new set with values not in the specified set. */

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()


/* 📚 Collection Types - Sets - Set Membership and Equality */
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true”


/*  📚 Collection Types - Dictionaries */
/*  1️⃣ A dictionary stores associations between keys of the same type in a collection with no
    defined ordering. Each value is associated with a unique key.
    which acts as an identifier for that value within the dictionary.
    2️⃣ Unlike items in an array, items in a dictionary don't have a specified order.
    3️⃣ You use a dictionary when you need to. ook up values based on their identifier,
    in much the same way that real-world dictionary is used to look up the definition for a
    particular word.
    ⚠️ Swift's Dictionary type is bridged to Foundation's NSDictionary class.
    For more information about using Dictionary with Foundation and Cocoa.
    >> Bridging Between Dictionary and NSDictionary.
*/


/*  📚 Collection Types - Dictionary Type Shorthand Syntax */
/*  The type of a Swift dictionary is written in full as Dictionary<Key, Value>,
    where key is the type of value that can be used as a dictionary key,
    and Value is the type of value that the dictionary stores for those keys.
    ⚠️ A dictionary key type must conform to the Hasable protocol, like a set's value type.
    The shorthand form is [Key: Value]. */
  
/*  📚 Collection Types - Creating an Empty Dictionary */
var namesOfIntegers: [Int: String] = [:]
// namesOfIntegers is an empty [Int: String] dictionary

namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
print(type(of:namesOfIntegers))

namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]”


/*  📚 Collection Types - Creating a Dictionary with a Dictionary Literal */
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var airports2 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]


/*  📚 Collection Types - Accessing and Modifying a Dictionary */
print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}
// Prints "The airports dictionary isn't empty.”

airports["LHR"] = "London"
// the airports dictionary now contains 3 items”

airports["LHR"] = "London Heathrow"

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// Prints "The old value for DUB was Dublin.”

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}
// Prints "The name of the airport is Dublin Airport.”

airports["APL"] = "Apple International"
// "Apple International" isn't the real airport for APL, so delete it
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

airports["APL"] = nil
// APL has now been removed from the dictionary”
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport.”


/*  📚 Collection Types - Iterating Over a Dictionary */

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: London Heathrow
// Airport name: Toronto Pearson”

let airportCodes = [String](airports.keys)
// airportCodes is ["LHR", "YYZ"]
print(type(of:airportCodes))

let airportNames = [String](airports.values)
// airportNames is ["London Heathrow", "Toronto Pearson"]
print(type(of:airportNames))

