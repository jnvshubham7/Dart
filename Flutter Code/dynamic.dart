void main() {
  // Declare a dynamic variable
  dynamic variable;

  // Assign an integer value
  variable = 42;
  print("Integer value: $variable");

  // Assign a string value
  variable = "Hello, Dart!";
  print("String value: $variable");

  // Assign a double value
  variable = 3.14;
  print("Double value: $variable");

  // Assign a list
  variable = [1, 2, 3];
  print("List: $variable");

  // Assign a map
  variable = {"name": "Alice", "age": 30};
  print("Map: $variable");

  // Example of changing types dynamically
  print("Type of variable is: ${variable.runtimeType}");

  variable = true;
  print("Boolean value: $variable");

  // Changing types and accessing as specific types
  variable = "42";
  int parsedValue = int.parse(variable); // Treat as a string and parse to int
  print("Parsed integer value: $parsedValue");
}
