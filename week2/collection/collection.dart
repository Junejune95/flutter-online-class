void main(){
  // final car1="BMW";
  // final car2="Honda";
  // final car3="Hammer";
  
  // create array
  final carlist=["BMW","Hammer","Honda"];
  print(carlist);

  //single item
  print(carlist[0]);

  // internal loop
  for(var car in carlist){
    print(car);
  }

  for(var i=0;i<carlist.length;i++){
    print(carlist[i]);
  }

  // integer
  final numLists=[1,3,5,7,9];
  int total=0;
  for(var data in numLists){
    total+=data;
  }
  print(total);

  print(carlist.first);
  print(carlist.last);
  print(carlist.isEmpty);
  
  // add new car
  carlist.add("Yamha DT");
  print("New Lists $carlist");

  carlist.insert(3, "New car by index");

  List<String> student=["Aung Aung","Mg Mg","Nilar"];
  final foods=<String>[
    "Banna",
    "Apple",
    "Waterlemon"
  ];
}