void main(){
  final student=["Aung Aung","Maung Maung","M","M"];
  final employee={"Aung Aung","Maung Maung","M","M"};
  // print("employee $employee");
  // print("list $student");

final projectA={"Aung Aung","Maung Maung","Thuza"};
final projectB={"Hla Hla","Yu Yu","Thuza"};
print(projectA.union(projectB));
print(projectA.intersection(projectB));
print(projectA.difference(projectB));

const a={1,3};
const b={3,5};
final c=a.union(b);
final d=a.intersection(b);
final e=a.difference(d);
print(e);
print(c);
print(d);

final newSet=a.union(b).difference(a.intersection(b));
print(newSet);
int total=0;
for(var num in newSet){
  total+=num;
}
print(total);



}