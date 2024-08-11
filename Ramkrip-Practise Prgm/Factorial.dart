void main(){
  String result;
  result = checkForFactorial(0);
  print (result);

  result = checkForFactorial(7);
  print (result);
}

checkForFactorial(int num){
  if (num <= 1){
  return 'The factorial for value $num is 1';
     }
  int factorial = 1;
  for (int i=1; i<=num; i++){
    factorial *=i ;
      }
    return 'The factorial for value $num is $factorial';
  }  