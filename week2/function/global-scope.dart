const myScore=100;
void main(){
  const a=10;
  print(a);

  void innerFunction(var value){
    print(a);
    print(value);
    print(myScore);
    void nestedFunction(var b)=> print(a);
    nestedFunction(a);
  }

  innerFunction(20);
}

void foo(){
  print(myScore);
}