function calcSI() {
   var amount= prompt("Enter amount: ","") ;
   var rate= prompt("Enter the rate: ","");
   var num_years=prompt("Enter the number of years","");
   var Simple_interest;
   
   if(amount!=0&&rate!=0&&num_years!=0){
   document.getElementById("amount").innerHTML="Amount: " +amount;
   document.getElementById("interest").innerHTML="Rate: " +rate;
   document.getElementById("years").innerHTML="Number of Years: " +num_years;
   
   Simple_interest=(amount*rate*num_years)/100;
   document.getElementById("SI").innerHTML="SIMPLE INTEREST IS: " +Simple_interest;
   
}
}

function palindrome() {
   var str = prompt("Enter a string to check: ", "");
   var len = str.length;
   var mid = Math.floor(len/2);
 
   for(var i = 0; i < mid;  i++ ) {
     if (str[i] !== str[len - 1 - i]) {
            alert(str +" not Palindrome.");
        }
   else{
      alert(str +" is Palindrome.");;
   }
}}

function area() {
   var radius = prompt("Enter the radius of the Circle","");
   var area;
   if(radius!=0){
      document.getElementById("radius").innerHTML="Radius: " +radius;

      area=(3.14 *radius *radius);
      document.getElementById("area").innerHTML="Area of Circle is: " +area;
   }

}
function copy(){
   var details = {  name: 'Ashish', age: 23, Competancy: 'iOS' };
   document.getElementById("details").innerHTML="Name is " +details.name + " <br> Age is " +details.age + "<br> Competancy is " +details.Competancy;
   var copied=JSON.parse(JSON.stringify(details));
   console.log(details);
   console.log(copied);
}
var Employee = [
   { Name: 'Ash', Age: 23, Salary: 45000, DOB: '16/08/1993' },
   { Name: 'Jas', Age: 24, Salary: 11500, DOB: '1/06/1992' },
   { Name: 'Adi', Age: 24, Salary: 600, DOB: '11/04/1992' },
   { Name: 'Nit', Age: 25, Salary: 10000, DOB: '6/12/1991' },
   { Name: 'Aka', Age: 29, Salary: 35000, DOB: '11/4/1988' }
];
var data=function(){
console.log(Employee);
}
var filter1=function(){
  var filtered=Employee.filter(emp => emp.Salary>5000)
  console.log(filtered)
}
var ques7 = function(){
   var emp = [ { Name: 'Ash', Age: 23, Salary: 45000, DOB: '16/08/1993' },
   { Name: 'Jas', Age: 24, Salary: 11500, DOB: '1/06/1992' },
   { Name: 'Adi', Age: 24, Salary: 600, DOB: '11/04/1992' },
   { Name: 'Nit', Age: 25, Salary: 10000, DOB: '6/12/1991' },
   { Name: 'Aka', Age: 29, Salary: 35000, DOB: '11/4/1988' }];
  
   result = emp.reduce(function (r, a) {
       r[a.Age] = r[a.Age] || [];
       r[a.Age].push(a);
       return r;
   }, Object.create(null));

   console.log(result);
}
var ques8 = function(){
   var emp = [{ Name: 'Ash', Age: 23, Salary: 45000, DOB: '16/08/1993' },
   { Name: 'Jas', Age: 24, Salary: 11500, DOB: '1/06/1992' },
   { Name: 'Adi', Age: 24, Salary: 600, DOB: '11/04/1992' },
   { Name: 'Nit', Age: 25, Salary: 10000, DOB: '6/12/1991' },
   { Name: 'Aka', Age: 29, Salary: 35000, DOB: '11/4/1988' }];
   
   var count = 0;
   
   for(let i = 0; i < emp.length;i++)
   {
       if(emp[i].Salary < 1000 && emp[i].Age > 20)
       {
           console.log(emp[i]);
           emp[i].Salary = emp[i].Salary * 5 ;
       }
   }
   console.log(emp);
}


















