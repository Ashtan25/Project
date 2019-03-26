import UIKit
/*:
 # Presented By: Ashish Singh
 #                           Protocol Oriented 2nd
 
 ## Question 2: Explain the use of self,Self in protocols, Also how they differ for Static function.
 

 ## self
 ### self in Swift is basically an instance. Every instance of a type has an implicit property called "self", which is a instance itself. We use the self property to refer to the current instance within its own instance methods.
 
 
 ## Self
 ### Whereas, Self is mostly useful in Protocols. It refers to the eventual type that conforms to the protocol.

 ## static
 ### Swift lets you create properties and methods that belong to a type, rather than to instances of a type. This is helpful for organizing your data meaningfully by storing shared data.
 ### Swift calls these shared properties "static properties", and you create one just by using the static keyword. Once that's done, you access the property by using the full name of the type.
 
 ## Question 3: Write a generic function that takes two operand and combine them.  Example = add(1 + 1), add(1.0 + 1.0), add(Ankit + nigam)
 */

protocol GenericAddition{
    func combineSum(first: Int, second: Int) -> Int
    func combineSum(first: Double, second: Double) -> Double
    func combineSum(first: String, second: String) -> String
    func combineSum(first: Float, second: Float) -> Float
}

class combineGeneric: GenericAddition{
    func combineSum(first: Int, second: Int) -> Int {
        return first + second
    }
    
    func combineSum(first: Double, second: Double) -> Double {
        return first + second

    }
    
    func combineSum(first: String, second: String) -> String {
        return first + second

    }
    
    func combineSum(first: Float, second: Float) -> Float {
        return first + second

    }
}

let a: GenericAddition = combineGeneric()
print(a.combineSum(first: 23, second: 45))
print(a.combineSum(first: "Ashish ", second: "Singh"))
print(a.combineSum(first: 1234.345, second: 243.456))


/*:
 ## Question 4 Write an extension on collection type to find the combined value of collection.
*/

protocol Number
{
    static func +(l: Self, r: Self) -> Self
}
extension Double : Number {}
extension Float  : Number {}
extension Int    : Number {}
extension String : Number {}


infix operator +=

func += <T:Number> ( left: inout T, right: T)
{
    left = left + right
}


prefix operator +/

prefix func +/ <T:Number>(toCombine:[T]?) -> T?
{
    switch true
    {
    case toCombine == nil:
        return nil
        
    case toCombine!.isEmpty:
        return ("Array is empty" as! T)
        
    default:
        var result = toCombine![0]
        for element in 1..<toCombine!.count
        {
            result += toCombine![element]
        }
        return result
    }
}
let doubleType = [ 12.4, 35.6, 456.65, 43.45 ]
let integerType = [1, 34, 23, 54, 56, -67, 0, 44]
let stringType = ["Ashish"," Singh"," IOS"]
let str = [String]()
print(+/doubleType ?? 0)
print(+/integerType ?? 0 )
print(+/stringType ?? "no string" )
print(+/str ?? "Array is empty")





