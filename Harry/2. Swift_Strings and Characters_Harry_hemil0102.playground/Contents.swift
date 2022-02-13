import UIKit

// ⬇️ list ⬇️

/*
    📖String and Characters ✅
    📖String and Characters - String Literals
                              - Multiline String Literals
                              - Special Characters in String Literals
                              - Extended String Delimiters
    📖String and Characters - initializing an Empty String
    📖String and Characters - String Mutability
    📖String and Characters - String Are Value Types
    📖String and Characters - Working with Characters
    📖String and Characters - Concatenating Strings and Characters
    📖String and Characters - String Interplation
    📖String and Characters - Unicode
                              - Unicode Scalar Values
                              - Extended Grapheme Clusters
    📖String and Characters - Counting Characters
    📖String and Characters - Accessing and Modifying a String
                              - String Indices
                              - Inserting and Removing
    📖String and Characters - Substrings
    📖String and Characters - Comparing Strings
                              - String and Character Equality
                              - Prefix and Suffix Equality
    📖String and Characters - Unicode Representations of Strings
                              - UTF-8 Representation
                              - UTF-16 Representation
                              - Unicode Scalar Representation
*/

// ⬆️ list ⬆️

// ⬇️ contents ⬇️



/* 📖String and Characters */
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




/* 📖String and Characters - String Literals */
/* You can include predefined String values within your code as string literals.
   A string literal is a sequence of characters surrounded by double quotation marks ("). */

let harry = "harry is handsome maybe..."
//String is initialized with a string literal value.


/* 📖String and Characters - String Literals - Multiline String Literals */
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
