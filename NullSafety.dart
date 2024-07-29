//null safety
//null safety is a feature that helps you avoid null
//reference exceptions in your code.

// what is null ?
// null is a special value in Dart that represents an
//object that isn’t pointing to anything.

void main() {
  int sum1; // Non-nullable integer
  int? sum2 ; // Nullable integer

  //   ? is used to declare a variable as nullable.

  // print(sum1); // Prints: 10
  // print(sum2); // Prints: null

  // if (sum1 != null) {
  //   print(sum1);
  // }


  if(sum2 != null){
    print(sum2);
  }


}
