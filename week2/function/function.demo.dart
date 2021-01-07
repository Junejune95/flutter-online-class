void main(){
  // greet("Zon",25);
  // greet("Hello",90);

  sum([]);
  sum([1,2]);
  sum([1,2,3,4]);


}

// void greet(){
//   print("Hi");
//   print("How are You?");
// }

void greet(String name,int age)=>
  print("I am $name and I am $age your old");


 sum(List<double> lists){
  double total=0;
  for(var list in lists){
    total+=list;
  }
  print("Total: $total");
  return total;
}