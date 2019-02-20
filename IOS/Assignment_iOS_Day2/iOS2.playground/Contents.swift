import UIKit
struct personal
{
    var employeeId : Int
    var name : String
    var country : String
    var address : String
    var hobbies : String?
}

struct professional
{
    var employeeId : Int
    var name : String
    var department : String
    var branch : String
    var experience : String
}
struct common
{
    var employeeId : Int
    var name : String
    var country : String?
    var address : String?
    var hobbies : String?
    var department : String?
    var branch : String?
    var experience : String?
}


var Country = ["India","America","Britain","Japan","China"]
var Department = ["India","America","Britain","Japan","China"]
var Branch = ["Ios","Jvm","Android","Full stack","Web"]
var personal1 = personal(employeeId: 101, name: "Akash",  country: Country[0], address: "Ghaziabad", hobbies: "Badminton")

var personal2 = personal(employeeId: 102, name: "Arjun",  country: Country[0], address: "Lukhnow", hobbies: "football")

var personal3 = personal(employeeId: 103, name: "Shobit",  country: Country[3], address: "Delhi", hobbies: "Gaming")

var professional1 = professional(employeeId: 101, name: "Akash", department: Department[0], branch: Branch[0], experience: "fresher")
var professional2 = professional(employeeId: 102, name: "Arjun", department: Department[1], branch: Branch[0], experience: "fresher")
var professional3 = professional(employeeId: 104, name: "karan", department: Department[3], branch: Branch[3], experience: "fresher")
var professional4 = professional(employeeId: 106, name: "Aman", department: Department[4], branch: Branch[3], experience: "fresher")
var personalArray : [personal] = []
personalArray.append(personal1)
personalArray.append(personal2)
personalArray.append(personal3)
var professionalArray : [professional] = []
professionalArray.append(professional1)
professionalArray.append(professional2)
professionalArray.append(professional3)
var commonArray : [common] = []
var temp : [Int] = []

print("Question 1 :")
// Question 1. create a third employee structure that contains the information from both based on common id.

for emp1 in personalArray
{
    for emp2 in professionalArray
    {
        if(emp1.employeeId==emp2.employeeId )
            
        {
            commonArray.append(common(employeeId: emp1.employeeId, name: emp1.name, country: emp1.country, address: emp1.address, hobbies: emp1.hobbies!, department: emp2.department, branch: emp2.branch, experience: emp2.experience))
        }
    }
    
}
for emp1 in commonArray{
    print("Name :" , emp1.name , "\nEmployee Id :" , emp1.employeeId ,"\nDepartment :",emp1.department!,"\nCountry :",emp1.country!,"\nAddress :",emp1.address!,"\nhobbies :",emp1.hobbies!,"\nExperience :",emp1.experience!)
    print("\n")
}

print("\n \n \n")
print("Question 2 :")
// Question 2. write a function that takes the two structure and give me list of all the employee that live in certain country

/*for emp1 in personalArray
 {
 for emp2 in professionalArray
 {
 if( emp1.country == emp2.department )
 
 {
 print(emp1.name,emp2.name,"are in Country",emp1.country)
 
 }
 }
 }
 */


func tellNameWithCountry(Array1 : [personal] , Array2 : [professional])
{
    for emp1 in Array1
    {
        
        print(emp1.name," lives in ",emp1.country)
    }
    for emp2 in Array2
    {
        print(emp2.name," lives in ",emp2.department)
    }
    
}
tellNameWithCountry(Array1: personalArray , Array2: professionalArray);
print("\n \n \n")
print("Question 3 :")

// Question 3: Write a function that give me list of all the employee that live in certain department


func tellNameWithDepartment(Array2 : [professional])
{
    for emp1 in Array2
    {
        
        print(emp1.name,"'s Department is in ",emp1.department)
    }
}
tellNameWithDepartment(Array2: professionalArray);
print("\n \n \n")
print("Question 4 :")
// Question 4: write a function that give me list of all the employee that live in same country and work in the same branch.

var commonArrayAll : [common] = []
for emp1 in personalArray
{
    for emp2 in professionalArray
    {
        if(emp1.employeeId==emp2.employeeId )
            
        {
            commonArrayAll.append(common(employeeId: emp1.employeeId, name: emp1.name, country: emp1.country, address: emp1.address, hobbies: emp1.hobbies!, department: emp2.department, branch: emp2.branch, experience: emp2.experience))
            break
        }
        else
        {
            commonArrayAll.append(common(employeeId: emp1.employeeId, name: emp1.name, country: emp1.country, address: emp1.address, hobbies: emp1.hobbies, department: nil, branch: nil, experience: nil ))
            
            commonArrayAll.append(common(employeeId: emp2.employeeId, name: emp2.name, country: nil, address: nil, hobbies: nil, department: emp2.department, branch: emp2.branch, experience: emp2.experience ))
        }
    }
    
}


for emp1 in commonArray
{
    for emp2 in commonArray
    { if(emp1.country==emp2.country && emp1.branch == emp2.branch)
    {
        print("Name :" , emp1.name , "\nEmployee Id :" , emp1.employeeId ,"\nDepartment :",emp1.department,"\nCountry :",emp1.country,"\nAddress :",emp1.address,"\nhobbies :",emp1.hobbies,"\nExperience :",emp1.experience)
        print("\n")
        }
    }
}

print("\n \n \n")
print("Question 5 :")
// Question 5.  write a function that return me list of all the employee name that has a hobby and with their experience .

for emp1 in commonArray
{
    for emp2 in commonArray
    { if(emp1.hobbies==emp2.hobbies && emp1.experience == emp2.experience)
    {
        print("Name :" , emp1.name , "\nEmployee Id :" , emp1.employeeId ,"\nDepartment :",emp1.department,"\nCountry :",emp1.country,"\nAddress :",emp1.address,"\nhobbies :",emp1.hobbies,"\nExperience :",emp1.experience)
        print("\n")
        }
    }
}

print("\n \n \n")
print("Question 6 :")
//question 6.  write a function that return me list of all the employee name that starts with any “S”



for emp1 in commonArrayAll
{ if(emp1.name.hasPrefix("S"))
{
    print("Name :" , emp1.name , "\nEmployee Id :" , emp1.employeeId ,"\nDepartment :",emp1.department ,"\nCountry :",emp1.country ,"\nAddress :",emp1.address ,"\nhobbies :",emp1.hobbies ,"\nExperience :",emp1.experience )
    }
}
