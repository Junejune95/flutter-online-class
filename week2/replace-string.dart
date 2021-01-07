void main(){
  String game="I love to play PUBG";
  print(game);
  game=game.replaceAll("PUBG", "DOTA");
  print(game);

  int age=20;
  String ageString=age.toString();
  print(ageString);

  double doubleValue=double.tryParse(ageString);
  print(doubleValue);
}