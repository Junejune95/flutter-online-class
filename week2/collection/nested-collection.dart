void main() {
  final recipes = [
    {
      "name": "Shan Noodle",
      "cuisine": "Myanmar",
      "rating": [5, 0, 35.5]
    },
    {
      "name": "Korean Rib Soup",
      "cuisine": "Myanmar",
      "rating": [5, 0, 35.5]
    },
    {
      "name": "Fried Rice",
      "cuisine": "Myanmar",
      "rating": [5, 0, 35.5]
    },
  ];

  for(var recipe in recipes){
    print(recipe);
  }
}
