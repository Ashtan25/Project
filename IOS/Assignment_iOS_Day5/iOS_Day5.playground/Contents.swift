import UIKit
/*:
 # Assignment Day3
 **Submitted By Ashish Singh**
*/
/*:
## Question 1
 **What is extension?**
 ### Swift Extension is a useful feature that helps in adding more functionality to an existing Class, Structure, Enumeration or a Protocol type. This includes adding functionalities for types where you don’t have the original source code too (extensions for Int, Bool, String etc. types).


 ## Question 2
 **Create a class and write the delegate of UITextField in extension of that class.**

 */
 
 import UIKit
 class ModifiedTextField: UITextField {
 
 override func awakeFromNib() {
 delegate = self
 }
 }
 extension ModifiedTextField : UITextFieldDelegate{
 func textFieldDidBeginEditing(_ textField: UITextField) {
 fieldEmptyError(value: false)
 
 }
 func fieldEmptyError(value: Bool){
 }
 }
/*:
## Ques 3
 **Write a protocol and create an extension of the protocol. In extension create a function**
 

*/
protocol sayAshish
{
    func sayHello()
}
extension sayHey : sayAshish
{
    func sayHello() {
        print("Hello!")
    }
}
class sayHey
{
    var name : String
    init(name1 : String) {
        self.name = name1
    }
}

var sh = sayHey(name1 : "Ashish")
sh.sayHello()
/*:
## Ques 4
 **Write an enum and create an extension of the enum.**
*/
enum Meals: String {
    case breakfast
    case lunch
    case brunch
    case Dinner
}

extension Meals {
    var value: String {
        return self.rawValue
    }
    
    func printValue() {
        switch self {
        case .breakfast:
            print("Bread Butter Milk")
        case .lunch:
            print("Omlet and Juice")
        case .brunch:
            print("Protein shake and PeaNut Butter")
        case .Dinner:
            print("Chapati and Daal")
        }
    }
}

Meals.breakfast.printValue()
/*:
 ## Ques 5
**What is Generic**
 **Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.**
*/
/*:
 ## Ques 6
 **Explain generic with an example?**

*/
 func swapInt1 (_ num1 : inout Int ,_ num2 : inout Int)
{
    let temporary = num1
    num1 = num2
    num2 = temporary
}
func swapDouble1 (num1 : inout Double , num2 : inout Double)
{
    let temporary = num1
    num1 = num2
    num2 = temporary
}

var firstnumint : Int = 12
var secondnumint : Int = 10
swapInt1( &firstnumint ,  &secondnumint)

var firstnumDoub : Double = 12.60
var secondnumDoub : Double = 8.40
swapDouble1(num1: &firstnumDoub, num2: &secondnumDoub)

func swappingAllType <A>(_ num1 : inout A , _ num2 : inout A )
{
    let Temporary = num1
    num1 = num2
    num2 = Temporary
}
var int11 = 12
var int22 = 11
swappingAllType(&int11, &int22)

var strng1 = "Ashish"
var strng2 = "Singh"
swappingAllType(&strng1, &strng2)

/*:
 ## ques 7
 **Explain the difference between map and compactMap with an example.**
 */
/*:
 **Map : Map is a high order function which Returns an array containing the results of mapping the given closure over the sequence’s elements.**
 **CompactMap : CompactMap is a high order function which Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.**
 */

//example
let mixedUpArray : [Int?] = [1,21,33,nil,41,nil,36]
let Maparray = mixedUpArray.map{$0}
print(Maparray)
let MapCompactArray = mixedUpArray.compactMap{$0}
print(MapCompactArray)
/*:
## Ques 8
 **Write an example of reduce function with initial value 1000.**
 

*/
 var maxNumber = Array(1...5)
    .reduce(1000) { (total, number) in (total + number) }
print(maxNumber)
/*:
 ## Ques 9
 **Find all person whose age is more than 25 using filter function.**
*/

 struct Person {
    
    
    
    var name : String
    
    var age : Int
    
    
    
}

let person1 = Person(name: "Ash", age: 23)

let person2 = Person(name: "Jas", age: 30)

let person3 = Person(name: "Adi", age: 27)

let person4 = Person(name: "Nit", age: 20)



let personArray = [person1, person2, person3, person4]

var moreThentf = personArray.filter{$0.age > 25}
for emp1 in moreThentf
{
    print(emp1.name," is older then 25")
}

