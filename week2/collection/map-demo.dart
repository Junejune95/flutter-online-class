void main() {
  final person = {"name": "Zon", "age": 20, "address": "Yangon"};
  // print(person);

  Map<String, dynamic> employee = {
    "id": "009",
    "name": "John",
    "address": "Ny",
    "isSingle": false
  };
  employee["likecomment"] = false;
  // print(employee);
  // print(employee["id"]);
  final employee2 = <String, dynamic>{
    "id": "009",
    "name": "John",
    "address": "Ny",
    "isSingle": false
  };

// using key property
  for (var key in employee.keys) {
    print("$key:  ${employee[key]}");
  }

  // using values propertie
  for (var data in employee.values) {
    print(data);
  }

  print("Using Entry");
  // using entries property
  for (var entry in employee.entries) {
    print("${entry.key} : ${entry.value}");
  }

  // exercise
  print('Exercise');
  const coldDrint={
    'orange' : 5.5,
    'apple' : 7.5,
    'carrot' : 6.5,
  };
  const order=['orange','apple','pineapple'];
  dynamic total=0;
  for(var order in order){
    if(coldDrint.keys.contains(order))
      total+= coldDrint[order];
    else print("$order is not on the menu");
  }
  print("Total :$total");
}
