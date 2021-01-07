class Walker{
  void walking(){
    print("I am walking");
  }
}

mixin Swimmer{
  void swimming(){
    print("I am swimming");
  }
}

class Animal{}

class Fish extends Animal with Swimmer{}

class Dog extends Animal with Walker,Swimmer{}

void main(){
  //can create object normal object but mixin can't
  final walker=Walker();
  walker.walking();

  final fish=Fish();
  fish.swimming();

  final dog=Dog();
  dog.swimming();
  dog.walking();

}



