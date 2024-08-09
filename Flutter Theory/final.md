In Dart, the `final` keyword is used to declare a variable that can only be set once. Once a `final` variable is assigned a value, it cannot be reassigned. This is useful for defining constants or read-only properties that should not change after initialization.

### Key Characteristics of `final`

1. **Single Assignment**: A `final` variable can only be assigned once. Attempting to reassign it will result in a compilation error.
2. **Runtime Constant**: `final` variables can be initialized at runtime, unlike `const` variables, which must be compile-time constants.

### Example Usages of `final`

#### 1. Simple Usage

```dart
void main() {
  final String name = 'Alice';

  // Attempting to reassign will cause an error
  // name = 'Bob';  // Error: The final variable 'name' can only be set once.

  print(name);  // Prints: Alice
}
```

In this example, the `name` variable is declared as `final` and assigned a value. Any attempt to reassign it will result in a compilation error.

#### 2. With Classes

```dart
class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  Person person = Person('Alice', 30);

  print('Name: ${person.name}, Age: ${person.age}');  // Prints: Name: Alice, Age: 30

  // Attempting to change name or age will cause an error
  // person.name = 'Bob';  // Error: The final variable 'name' can only be set once.
}
```

In this example, the `name` and `age` properties of the `Person` class are declared as `final`. These properties can be assigned once during object instantiation but cannot be changed afterward.

#### 3. Using `final` with Lists and Collections

```dart
void main() {
  final List<int> numbers = [1, 2, 3];

  // The list itself cannot be reassigned
  // numbers = [4, 5, 6];  // Error: The final variable 'numbers' can only be set once.

  // However, the contents of the list can be modified
  numbers.add(4);
  print(numbers);  // Prints: [1, 2, 3, 4]
}
```

In this example, the `numbers` list is declared as `final`, meaning the reference to the list cannot change. However, the contents of the list can still be modified.

### Difference Between `final` and `const`

- **final**: Variables can only be set once and can be initialized at runtime. Suitable for read-only properties that are determined during execution.
- **const**: Variables are compile-time constants and cannot be changed. Suitable for values that are known at compile time and will never change.

#### Example Comparing `final` and `const`

```dart
void main() {
  final DateTime now = DateTime.now();
  const double pi = 3.14159;

  print('Current time: $now');  // Prints the current date and time
  print('Value of pi: $pi');    // Prints: 3.14159

  // Attempting to reassign will cause an error
  // now = DateTime.now();  // Error: The final variable 'now' can only be set once.
  // pi = 3.14;             // Error: Constants can't be assigned a value.
}
```

In this example, `now` is a `final` variable that is initialized at runtime, while `pi` is a `const` variable that is a compile-time constant.

Using `final` is a good practice for defining variables that should not change once they are set, ensuring immutability and making your code more predictable and easier to maintain.
