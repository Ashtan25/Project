/*:
 # Assignment Day3
 **Submitted By Ashish Singh**

 ### Question 1
 **Write a function called siftBeans(fromGroceryList:) that takes a grocery list (as an array of strings) and “sifts out” the beans from the other groceries. The function should take one argument that has a parameter name called list, and it should return a named tuple of the type (beans: [String], otherGroceries: [String]).**
 
 
 
**Here is an example of how you should be able to call your function and what the result should be:**
 
 **let result = siftBeans(fromGroceryList: ["green beans",
 
 "milk",
 
 "black beans",
 
 "pinto beans",
 
 "apples"])**
 
 
 
 **result.beans == ["green beans", "black beans", "pinto beans"] // true**
 
 **result.otherGroceries == ["milk", "apples"] // true”**
 

 */


import UIKit
func siftBeans(fromGroceryList: [String]) -> (beans:[String], otherGroceries:[String]){
    var beans: [String] = [ ]
    var otherGroceries: [String] = [ ]
    for items in fromGroceryList{
        if items.contains("beans"){
            beans.append(items)
        }
        else {
            otherGroceries.append(items)
            }
        }
    return (beans,otherGroceries)
}
let result = siftBeans(fromGroceryList: ["green beans",
                            
                            "milk",
                            
                            "black beans",
                            
                            "pinto beans",
    
                            "apples"])


print ("Grocery items containing beans are \(result.beans)")
print ("Grocery items containing other than beans are \(result.otherGroceries)")

/*:
 ### Question 2
 **Make a calculator class with a function name “equals” that take a enum case as value like multiply, subtraction, addition, square root, division.**
 
 **Make same calculator using functions as argument, define all type functions in a struct.**
 */
/*:
 Type 2.1
 */
class AshCalculator{
    enum Operations{
        case addition(Double,Double)
        case multiplication(Double,Double)
        case divison(Double,Double)
        case subtraction(Double,Double)
        case squareRoot(Double)
        
    }
        func equals(op: Operations) -> Double{
            switch op{
            case .addition(let operand1,let operand2):
                return operand1 + operand2
            case .subtraction(let operand1,let operand2):
                return operand1 - operand2
            case .divison(let operand1,let operand2):
                return operand1 / operand2
            case .multiplication(let operand1,let operand2):
                return operand1 * operand2
            case .squareRoot(let operand1):
                return operand1.squareRoot()
            }
        }


}

let obj = AshCalculator()
print(obj.equals(op: .squareRoot(64)))

/*:
 Type 2.2
 */
struct AshCalc
{
    func add(_ num1 : Int ,_ num2 : Int) -> Int
    {
        return (num1 + num2)
    }
    func sub(num1 : Int , num2 : Int) -> Int
    {
        return (num1 - num2)
    }
    func mul(num1 : Int , num2 : Int) -> Int
    {
        return (num1 * num2)
    }
}

func calcu(c : (Int,Int) -> Int , firstNum : Int , secondNum : Int)
{
    let m = c(firstNum , secondNum)
    print(m)
}
var n = AshCalc()
calcu(c : n.add , firstNum: 1 , secondNum: 12 )
calcu(c: n.mul , firstNum: 12, secondNum: 10 )




























