void main() {
  final String name = 'Alice';

  // Attempting to reassign will cause an error
  // name = 'Bob';  // Error: The final variable 'name' can only be set once.

  print(name);  // Prints: Alice


  name = 'Bob';  // Error: The final variable 'name' can only be set once.

  print(name);  // Prints: Alice
}
