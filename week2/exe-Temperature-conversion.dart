void main(){
  double tempFarenheit=86;
  // print(tempFarenheit.toString()+"F ="+((tempFarenheit-32)/1.8).toString()+ "C");
  double tempCelsius=(tempFarenheit-32)/1.8;
  print("${tempFarenheit.toStringAsFixed(1)}F = ${tempCelsius.toStringAsFixed(1)}C");
}