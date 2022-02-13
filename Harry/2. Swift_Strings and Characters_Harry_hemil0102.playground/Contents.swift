import UIKit

// ⬇️ list ⬇️

/*
    📖 String and Characters ✅
    📖 String and Characters - String Literals ✅
                               - Multiline String Literals ✅
                               - Special Characters in String Literals ✅
                               - Extended String Delimiters ✅
    📖 String and Characters - initializing an Empty String ✅
    📖 String and Characters - String Mutability ✅
    📖 String and Characters - String Are Value Types ✅
    📖 String and Characters - Working with Characters ✅
    📖 String and Characters - Concatenating Strings and Characters ✅
    📖 String and Characters - String Interpolation ✅
    📖 String and Characters - Unicode ✅
                               - Unicode Scalar Values ✅
                               - Extended Grapheme Clusters ✅
    📖 String and Characters - Counting Characters ✅
    📖 String and Characters - Accessing and Modifying a String ✅
                               - String Indices ✅
                               - Inserting and Removing ✅
    📖 String and Characters - Substrings ✅
    📖 String and Characters - Comparing Strings ✅
                               - String and Character Equality ✅
                               - Prefix and Suffix Equality ✅
    📖 String and Characters - Unicode Representations of Strings ✅
                               - UTF-8 Representation ✅
                               - UTF-16 Representation ✅
                               - Unicode Scalar Representation ✅
*/

// ⬆️ list ⬆️

// ⬇️ contents ⬇️



/* 📖 String and Characters */
/* 1️⃣ A string is a series of characters, such as "hello, world" or "albatross".
      Swift strings are represented by the String type. The contents of a String can be accessed in various way,
      including as a collection of Character values.
   2️⃣ Swift's String and Character types provide fast, Unicode-compliant way to work with text in your code,
   3️⃣ Despite this simplicity of syntax, Swift's String type is a fast, modern string implementation.
      Every String is composed of encoding-independent Unicode characters, and provides support for accessing those
      characters in various Unicode representations.
 
   ⚠️ Swift's String type is bridged with Foundation's NSString class.
      Foundation also extends String to expose methods defined by NSString.
      This means, if you import Foundation, you can acess those NSString methods on String without 'casting'.
      >> Bridging Between String and NSString.
 */




/* 📖 String and Characters - String Literals */
/* You can include predefined String values within your code as string literals.
   A string literal is a sequence of characters surrounded by double quotation marks ("). */

let harry = "harry is handsome maybe..."
//String is initialized with a string literal value.


/* 📖 String and Characters - String Literals - Multiline String Literals */
/* If you need a string that spans several lines, use a multiline string literal - a sequence of characters surrounded by
   three double quotation marks */

let quotation = """
I love listening to music when I walk.
If you walk in Garosu-gil, a song called "How Do You Think" by Cheeze is good to listen to.
I like some lyrics "We were walking along with the Garosu-gil..."
"""
print(quotation)

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop.
"""
print(softWrappedQuotation)


let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
print(lineBreaks)

let linesWithIdenftation = """
    This line doesn't begin with whitespace.
        This line begins with four spaces.
    This line doesn't begin with whitespace.
    """
print(linesWithIdenftation)


/* 📖 String and Characters - String Literals - Special Characters in String Literals */
/* 1️⃣ The escaped special characters \0(null character), \\backslash, \t(horizontal tab), \n(line feed),
      \r(carriage return) \"(double quotation mark) and \'(single quotation mark)
   2️⃣ An arbitrary Unicode scalar value, written as \u{n}, where n is a 1-9dight hexadecimal number >> Unicode */

let wiseWords = "\"Imagination is more important than knowledge\" - Einstenin"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

/* let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
""" */


/* 📖 String and Characters - String Literals - Extended String Delimiters */

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
print(threeMoreDoubleQuotationMarks)

let test = #"Line1\#nLine2\nLine3"#
print(test)


/* 📖 String and Characters - initializing an Empty String */

var emptyString = ""
var anotherEmptyString = String()
var moreEmtyString: String

if emptyString.isEmpty {
    print("Nothing to see here")
}


/* 📖 String and Characters - String Mutability */

var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander"
// ❌ -> Left side of mutating operator isn't mutable: 'constantString' is a 'let' constant
/* ⚠️ This approach is different from string mutation in Objective-C and Cocoa, where you choose between two classes
   (NSString and NSMutableString) to indicate whether a string ca be mutated. */


/* 📖 String and Characters - Strings Are Value Types */
// value types are described in >> Structures and Enumerations Are Value Types //




/* 📖 String and Characters - Working with Characters */

for character in "Dog!🐶" {
    print(character)
}

//a stand-alone Character
let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "😼"]
let catString = String(catCharacters)
print(catString)




/* 📖 String and Characters - Concatenating Strings and Characters */

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

welcome.append(exclamationMark)
var testCharacter: Character = "A"
print(type(of: testCharacter))
var addCharacter = "B"
// testCharacter.append(addCharacter)
// ❌ -> Value of type 'Character' has no member 'append'
// ⚠️ you can't append a String or Character to an existing Character variable,
// because a Character value must contain a single character only.

let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)
// Prints two lines:
// one
// twothree

let goodStart = """
one
two

"""
print(goodStart + end)
// Prints three lines:
// one
// two
// three


/* 📖 String and Characters - String Interpolation */

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(#"6 times 7 is \#(6 * 7)."#)

// ⚠️ The expressions you write inside parentheses within an interpolated string can't contain an unescaped
// backslash (\), a carrage return, or a line feed. However, they can contain other string literals.


/* 📖 String and Characters - Unicode */
/* Unicode is an international standard for encoding, representing, and processing text in different writing systems.
   It enables you to represent almost any character from any language in a standardized form, and to read and write
   those characters to and from an external source such as a text file or web page.
   Swift's String and Character ypes are fully Unicode-compliant, as described in this section. */


/* 📖 String and Characters - Unicode - Unicode Scalar Values */
/* Behind the scenes, Swift's native String type is built from Unicode scalar values.
   A Unicode scalar value is a unique 21-bit number for a character or modifier, such as U+0061 for
   LATIN SMALL LETTER A("a"), or U+1F425 for FRONT-FACING BABY CHICK ("🐥").

   Note that not all 21-bit Unicode scalar value are assigned to a character - some scalar are reserved for
   future assignement or for use in UTF-16 encoding. Scalar values that have been assigned to a character
   typically also have a name, such as LATIN SMALL LETTER A and FRONT-FACING BABY CHICK in the examples above. */


/* 📖 String and Characters - Unicode - Extended Grapheme Clusters */

let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"
let eachCharacter1 = "\u{65}"
let eachCharacter2 = "\u{301}"
// e followed by
// eAcute is é, combinedEAcute is é

let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
// precomposed is 한, decomposed is 한

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
let eachCharacter3 = "\u{E9}"
let eachCharacter4 = "\u{20DD}"
// enclosedEAcute is é⃝

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
let eachCharacter5 = "\u{1F1FA}"
let eachCharacter6 = "\u{1F1F8}"
// regionalIndicatorForUS is 🇺🇸


/* 📖 String and Characters - Unicode - Counting Characters */
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4”

/*  ⚠️ Extended grapheme clusters can be composed of multiple Unicode scalars. This means that different characters—and different representations of the same character—can require different amounts of memory to store. Because of this, characters in Swift don’t each take up the same amount of memory within a string’s representation. As a result, the number of characters in a string can’t be calculated without iterating through the string to determine its extended grapheme cluster boundaries. If you are working with particularly long string values, be aware that the count property must iterate over the Unicode scalars in the entire string in order to determine the characters for that string.
 
    The count of the characters returned by the count property isn’t always the same as the length property
    of and NSString that contains the same characters. The length of an NSString is based on the number of
    16-bit code units within the string’s UTF-16 representation and not the number of Unicode extended grapheme
    clusters within the string.” */


/* 📖 String and Characters - Unicode - Accessing and Modifying a String */

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
print(greeting.endIndex)
print(type(of: greeting.endIndex))
print(greeting.endIndex)
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
print(type(of: index))
greeting[index]
// a

//greeting[greeting.endIndex]
// ❌ -> Fatal error: String index is out of bounds
//greeting.index(after: greeting.endIndex)
// ❌ -> Fatal error: String index is out of bounds


for index in greeting.indices { //.indices range
    print("\(greeting[index]) ", terminator: "") //terminator

}
// Prints "G u t e n   T a g !
/*  ⚠️ You can use the startIndex and endIndex properties and the index(before:), index(after:), and index(_:offsetBy:) methods on any type that conforms to the Collection protocl. This includes String, as shown here, as well as collection types such as Array, Dictionary, and Set */




/* 📖 String and Characters - Unicode - Inserting and Removing */
var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)
// welcome now equals "hello!"

welcome2.insert(contentsOf: " there", at: welcome2.index(before: welcome2.endIndex))
// welcome now equals "hello there!”

welcome2.remove(at: welcome2.index(before: welcome2.endIndex))
// welcome now equals "hello there"

let range = welcome2.index(welcome2.endIndex, offsetBy: -6)..<welcome2.endIndex
welcome2.removeSubrange(range)
// welcome now equals "hello”
/* ⚠️ You can use the insert(_:at:), insert(contentsOf:at:), remove(at:), and removeSubrange(_:) methods
   on any type that conforms to the RangeRepaceableCollection protocol.
   This includes String, as shown here, as well as collection types such as Arry, Dictionary, and Set. */




/* 📖 String and Characters - Substrings */
let greeting2 = "Hello, world!"
let index2 = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<index2]
// beginning is "Hello"
print(type(of:index2))
print(index2)
print(type(of:beginning))
print(beginning)
// Convert the result to a String for long-term storage.
let newString = String(beginning)
// ⚠️ Substrings can reuse a region of memory from Strings, we use it for only a short amount of time
// >> StringProtocol




/* 📖 String and Characters - Comparing Strings */
/* Swift provides three ways to compare textual values: string and character equality, prefix equality, and suffix equality */

/* 📖 String and Characters - Comparing Strings - String and Character Equality */
/* "equal to" (==), "not equal to" (!=) */
let quotation2 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation2 == sameQuotation {
    print("These two strings are considered equal")
}

// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
print(eAcuteQuestion)
// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
print(combinedEAcuteQuestion)

if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal”

let latinCapitalLetterA: Character = "\u{41}"
print(latinCapitalLetterA)
let cyrillicCapitalLetterA: Character = "\u{0410}"
print(cyrillicCapitalLetterA)

if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}
// Prints "These two characters aren't equivalent.”

// ❓⚠️ String and character comparisons in Swift aren't locale-sensitive.


/* 📖 String and Characters - Comparing Strings - Prefix and Suffix Equality */
// hasPrefix(_:) and hasSuffix(_:)

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// Prints "There are 5 scenes in Act 1”

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// Prints "6 mansion scenes; 2 cell scenes”

/* ⚠️ The hasPrefix(_:) and hasSuffix(_:) methods perform a character-by-character canonical equivalence
   canoical equivalence comparison between the extended grapheme cluster in each string. */
 

 
 
/* 📖 String and Characters - Unicode Representations of Strings */
let dogString = "Dog‼🐶"

// UTF-8 Representation
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// UTF-16 Representation
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Unicode Scalar Representation
for scalar in dogString.unicodeScalars {
    print("\(scalar) ", terminator: "")
    print(scalar.value)
}
