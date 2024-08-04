Dart provides a variety of data types to work with, including basic types, collection types, and more specialized types. Here's a omprehensive overview of Dart data types:

### 1. Basic Data Types

- **Numbers**:

  - `int`: Represents integer values.
    ```dart
    int a = 42;
    ```
  - `double`: Represents floating-point numbers.
    ```dart
    double b = 3.14;
    ```
- **Strings**:

  - `String`: Represents a sequence of characters.
    ```dart
    String name = "Dart";
    ```
- **Booleans**:

  - `bool`: Represents true or false values.
    ```dart
    bool isLoggedIn = true;
    ```

### 2. Collections

- **Lists** (Dynamic and Fixed Length):

  - `List`: An ordered collection of objects.
    ```dart
    List<int> numbers = [1, 2, 3];
    ```
  - You can also have lists with mixed types or even generic lists.
    ```dart
    List<dynamic> mixedList = [1, 'two', 3.0];
    ```
- **Maps**:

  - `Map`: A collection of key-value pairs.
    ```dart
    Map<String, int> ages = {'Alice': 30, 'Bob': 25};
    ```
- **Sets**:

  - `Set`: An unordered collection of unique items.
    ```dart
    Set<String> names = {'Alice', 'Bob', 'Charlie'};
    ```

### 3. Special Types

- **Null**:

  - The `Null` type represents the absence of a value. With Dart's null safety feature, you explicitly declare whether a variable can be null or not.
    ```dart
    String? nullableString = null;  // Can be null
    String nonNullableString = "Hello";  // Cannot be null
    ```
- **Symbols**:

  - A `Symbol` object represents an operator or identifier declared in a Dart program. You can get the symbol of a class member with `#`.
    ```dart
    Symbol sym = #someSymbol;
    ```
- **Runes**:

  - Runes represent Unicode code points in strings.
    ```dart
    String clapping = '\u{1f44f}';
    ```
- **Dynamic**:

  - `dynamic`: A special type that tells the Dart compiler to allow all type checks and operations.
    ```dart
    dynamic something = 'A string initially';
    something = 42;  // Now an integer
    ```

### 4. Classes and Objects

- **Classes**: User-defined data types that can include fields and methods.

  ```dart
  class Person {
    String name;
    int age;

    Person(this.name, this.age);
  }

  Person person = Person('Alice', 30);
  ```
- **Enums**:

  - Enums are used to define a set of named values.
    ```dart
    enum Status { success, error, loading }
    Status currentStatus = Status.success;
    ```

### 5. Typedefs

- **Typedefs**: Used to define a type alias or function type.
  ```dart
  typedef IntFunction = int Function(int);

  int addOne(int x) => x + 1;

  IntFunction increment = addOne;
  print(increment(5));  // Output: 6
  ```

These data types cover most of the common needs when developing applications in Dart, including Flutter apps. They allow you to represent and manipulate a wide range of data and build complex structures.
