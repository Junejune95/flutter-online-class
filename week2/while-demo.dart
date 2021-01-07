void main() {
  int i = 1;
  while (i <= 5) {
    // print("*" * i);
    i++;
  }

  for (var i = 1; i <= 15; i++) {
    print(i%3);
    print(i);
    if (i % 3 == 0) {
      print("Fizz");
      continue;
    }
    if (i % 5 == 0) {
      print("Buzz");
      continue;
    }
    print("Done $i");
  }
}
