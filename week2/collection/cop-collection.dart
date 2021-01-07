void main(){
  final list=[1,2,3,4,5];
  final copy1=[...list];

  copy1.add(10);
  print("Original  $list");
  print("Copy1 $copy1");
}