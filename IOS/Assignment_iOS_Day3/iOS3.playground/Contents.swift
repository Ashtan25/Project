import UIKit

/*:
 # Assignment Day3
 **Submitted By Ashish Singh**
 ## Initializers

 1. **Implement the parameterised initialisation with class or struct.**
*/

class parameterisedInit{
    
    var name: String
    var id: String
    var competancy: String
    
    init(name: String, id: String, competancy: String){
        self.name = name
        self.id = id
        self.competancy = competancy
    }
    }
let parameter_Init = parameterisedInit(name: "Ashish",id: "1",competancy: "IOS" )
print("Name of the Employee is " + (parameter_Init.name));
print("whose ID is " + (parameter_Init.id));
print("and whose competancy is " + (parameter_Init.competancy) + " .")


/*:
2. **Write all the Rules of initialiser in Inheritance**

  * Rule 1: A designated initializer must call a designated initializer from its immediate superclass.
 
  * Rule 2: A convenience initializer must call another initializer from the same class.
 
  * Rule 3: A convenience initializer must ultimately call a designated initializer.
 
*/

/*:
 3. **Using convenience Initializers, write-down the Initializers for MOVIE class having basic attributes like title, author, publish_date, etc.**
 */


class MOVIE{
    
    var title: String
    var author: String
    var publish_date: String
    var release_date: String
    
    init(title: String,
    author: String,
    publish_date: String,
    release_date: String){
        
        self.title = title
        self.author = author
        self.publish_date = publish_date
        self.release_date = release_date
        }
    convenience init(){
        self.init(title: "Ride Through", author: "Ashish", publish_date: "2nd Feb", release_date: "20th Feb" )
    }
}
let convenience_Init = MOVIE()
print(convenience_Init.title)


/*:
 4. **Declare a structure which can demonstrate the throwable Initializer**
 */

class Employee {
    var employeeID: Int
    var employeeName: String
    var empSal: Double
    
    init?(employeeID: Int, employeeName: String, empSal: Double) {
        if employeeID <= 0 {
            return nil
        }
        self.employeeID = employeeID
        self.employeeName = employeeName
        self.empSal = empSal
    }
}

var emp = Employee(employeeID: -10, employeeName: "Ashish", empSal: 45000.0)
print(emp?.employeeID ?? 0 )


/*:
 ## Array
 1. **Create an array containing the 5 different integer values. Write at least 4 ways to do this.**
 
 
 ### a) Type 1
 
 ### var array: Array<Int> = [1,2,3,4,5]
 
 ### //:
 
 ### b) Type 2
 
 ### var array: [Int] = [1,2,3,4,5]
 
 ### //:
 
 ### c) Type 3
 
 ### var array = Array<Int>()
 
 ### array.append(1)
 
 ### array.append(2)
 
 ### array.append(3)
 
 ### array.append(4)
 
 ### array.append(5)
 
 ### //:
 
 ### d) Type 4
 
 ### var array = [Int]()
 
 ### array.append(1)
 
 ### array.append(2)
 
 ### array.append(3)
 
 ### array.append(4)
 
 ### array.append(5)
 
 */


/*:
 
 
 2. **Create an immutable array containing 5 city names.**
 
 
 ### Immutable array :-
 
 ### let city: [String] = ["Varanasi","Kanpur","Ghaziabad","Agra","Noida"]
 
 
 3. **Create an array with city 5 city names. Later add other names like Canada, Switzerland, Spain to the end of the array in at least 2 possible ways.**
 
 
 ### var city: [String] = ["Varanasi","Kanpur","Ghaziabad","Agra","Noida"]
 

 ### city.append("Canada")
 
 ### city.append("Switzerland")
 
 ### city.append("Spain")
 
 
 */


/*:
 
  4. **Create an array with values 14, 18, 15, 16, 23, 52, 95. Replace the values 24 & 48 at 2nd & 4th index of array**
 
 
 ### var num: [Int] = [14,18,15,16,23,52,95]
 
 ### num[2] = 24
 
 ### num[4] = 48
 
 */
/*;
 
## Sets
*/
 let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐭", "🦅"]
/*:
 1. ### Determine whether the set of house animals is a subset of farm animals.
*/
print(houseAnimals.isSubset(of: farmAnimals))
/*:
 2. ### Determine whether the set of farm animals is a superset of house animals.
 */
print(farmAnimals.isSuperset(of: houseAnimals))
/*:
 3. ### Determine if the set of farm animals is disjoint with city animals.
 */
print(farmAnimals.isDisjoint(with: cityAnimals))
/*:
 4. ### Create a set that only contains farm animals that are not also house animals.
 */
let notHouseAnimals: Set = farmAnimals.subtracting(houseAnimals)
print(notHouseAnimals)
/*:
 4. ### Create a set that contains all the animals from all sets.
 */

let allAnimals: Set = houseAnimals.union(farmAnimals).union(cityAnimals)
print(allAnimals)

/*:
 ## Dictionary
 1. **Create an empty dictionary with keys of type String and values of type Int and assign it to a variable in as many ways as you can think of (there's at least 4 ways).**
*/
/*:
//Type 1
 let myDiction1: Dictionary<String, Int> = [:]
//Type 2
let myDiction2: [String: Int] = [:]
//Type 3
let myDiction3 = Dictionary<String, Int>()
//Type 4
let myDiction4 = [String: Int]()
*/
/*:
 2. **Create a mutable dictionary named secretIdentities where the key value pairs are "Hulk" -> "Bruce Banner", "Batman" -> "Bruce Wayne", and "Superman" -> "Clark Kent".**
*/

 var secretIdentities: [String: String] = ["Hulk": "Bruce Banner",
 "Batman": "Bruce Wayne",
 "Superman": "Clark Kent"]
print(secretIdentities)
/*:
 3. **Create a nesters structure of Key-value pair.**

 */
 var nester : [String : Any] = ["A" : 1,
 "B" : 2.0,
 "C" : "iOS",
 "D" : ["A1", "A2", "A3"],
 "E"  :secretIdentities]
 print(nester)

/*:
 4. **Print all the keys in the dic**
*/

print(secretIdentities.keys)

/*:
 ### Subscript
 1. **What is subscript ? Write down the declaration syntax.**
 **Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence. You use subscripts to set and retrieve values by index without needing separate methods for setting and retrieval. For example, you access elements in an Array instance as someArray[index] and elements in a Dictionary instance as someDictionary[key].**
 
 **You can define multiple subscripts for a single type, and the appropriate subscript overload to use is selected based on the type of index value you pass to the subscript. Subscripts are not limited to a single dimension, and you can define subscripts with multiple input parameters to suit your custom type’s needs.**
 

subscript (<parameters>) -> <return type> {
    // the getter is required
    get {
        // used for subscript value declarations
    }
    set(newValue) { // the setter is optional
        // definitions are written here
    }
}
*/
/*:
2. **Create a simple subscript that outputs true if a string contains a substring and false otherwise.**

 */
class Sub {
    var str = "hello everyone"
    
    subscript (sub: String) ->Bool{
        if str.contains(sub) {
            return true
            //print("yes")
        }
        else {
            return false
            //print("no")
        }
    }
}
let subObj = Sub()
print(subObj["everyone"])



