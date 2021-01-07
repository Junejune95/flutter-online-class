typedef Calculate=String Function(int a, int b);

// + - * /

String add(int a,int b) => "$a+$b : ${a+b}";
String substract(int a,int b) => "$a-$b : ${a-b}";
String mutiply(int a,int b) => "$a*$b : ${a*b}";
String dividedBy(int a,int b) => "$a/$b : ${a/b}";


void main() {
  doMath(add, 10, 5);
  final list=[1,2,3,4,6];
  list.where((test) => false);
  list.forEach(print);
}

doMath(Calculate c,int a, int b){
  print(c(a,b));
}