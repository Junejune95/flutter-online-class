void main() {
  int age = 90;

  ///if age is less than 16
  ///junior ticket
  ///price $8
  // if (age < 16) {
  //   print("Junior Ticket");
  //   print("Price is : \$8");
  // }
  //  else if (age >= 60) {
  //   print("Senior Ticket");
  //   print("Price is : \$6");
  // }else{
  //   print("Junior Ticket");
  //   print("Price: \$10");
  // }
  // print("Enjoy your visist!");
  ///if age is greater than and equal 60
  ///Senior ticket
  ///price $6
 
 int netSalary=2000000;
 int expenses=15000000;

 if(netSalary > expenses){
   print("You have save ${netSalary - expenses} this month");
 }else if(expenses > netSalary)
 {
   print("You have lost ${expenses - netSalary}");
 }else {
   print("You balance hasn't changed.");
 }

}
