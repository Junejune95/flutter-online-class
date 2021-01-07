typedef Greeting=String Function(String);
void main(){
  //unknown function
  ()=>"hello";
  final sayhi= (String name)=>"hi $name";

  //how i use them.
  // print(sayhi("Zon"));
  welcome(sayhi, "Test");
}

//return string and argument is also string
// instead of String Function(String)<= Greeting mean before define
void welcome(Greeting f,String name){
  print(f("Zon"));
  print("Welcome to flutter course");
}