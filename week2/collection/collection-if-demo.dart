void main() {
  final students = ["Aung Aung", "Maung Maung", "Thaw Thaw", "Thin Thin"];
  final isNew = true;
  final isOld = false;
  if (isNew) {
    students.add("John");
  }
  if (isOld) {
    students.add("Already in class");
  }

  // print(students);

  // using collection-if
  final newStudents = [
    "Aung",
    "Maung",
    "Thaw",
    "Thida",
    if (isNew) "Andy James",
    if (isOld) "Already in Class Room",
    for (var stud in students) stud,
  ];
  // print(newStudents);

  final finalYearstudent = ["ko ko", "Kyaw Kyaw", ...newStudents];
  // print(finalYearstudent);

  final extraColor = ["Green", "Blue"];
  final addExtraColor = true;
  final colors = [
    "White",
    "Blac",
    if (addExtraColor) ...extraColor,
    if (addExtraColor) ...["More Extra Colors", "Grey", "Navy"]
  ];
  // print(colors);

  var ratings = [4.0, 5.0, 3.9, 4.8];
  var shop = {
    "name": "Breadtalk",
    "location": "Yangon",
    if (ratings.length > 1) "ratings": ratings,
    if (ratings.length > 3) ...{"ratings": ratings, "isPopular": true}
  };
  // print(shop);

  print("Exercise");
  const bannas=5;
  const apples=6;
  const grains={
    'pasta' : '500g',
    'rice' : '1kg',
  };
  const addGrains=true;
  var shoppingLists={
    if(bannas > 0) "bannas": bannas,
    if(apples>0) "apples" : apples,
    if(addGrains) ...grains
  };

  print(shoppingLists);
}
