In Dart, null safety is a language feature that helps you avoid null errors by distinguishing between nullable and non-nullable types. Understanding how null works in Dart and how to use null safety features is essential for writing robust and error-free code.

### Nullable vs. Non-Nullable Types

- **Nullable types** can have a null value.
- **Non-nullable types** cannot have a null value.

In Dart, by default, types are non-nullable. You must explicitly specify if a type can be null by adding a question mark `?` after the type.

### Declaring Nullable and Non-Nullable Types

```dart
void main() {
  int nonNullableInt = 10;  // Non-nullable integer
  int? nullableInt = null;  // Nullable integer

  print(nonNullableInt);  // Prints: 10
  print(nullableInt);     // Prints: null
}
```

### Null Safety Features

#### 1. Null Assertion Operator (!)

The null assertion operator (`!`) tells the Dart compiler that a nullable value will never be null at runtime. If the value is null, it will throw a runtime exception.

```dart
void main() {
  int? nullableInt = 10;
  int nonNullableInt = nullableInt!;  // Asserting that nullableInt is not null

  print(nonNullableInt);  // Prints: 10
}
```

#### 2. Null-aware Operator (??)

The null-aware operator (`??`) allows you to provide a default value if the expression evaluates to null.

```dart
void main() {
  int? nullableInt = null;
  int nonNullableInt = nullableInt ?? 0;  // If nullableInt is null, use 0

  print(nonNullableInt);  // Prints: 0
}
```

#### 3. Null-aware Assignment (??=)

The null-aware assignment operator (`??=`) assigns a value to a variable only if that variable is null.

```dart
void main() {
  int? nullableInt;
  nullableInt ??= 5;  // Assigns 5 because nullableInt is null

  print(nullableInt);  // Prints: 5
}
```

#### 4. Null-aware Method Invocation (?.)

The null-aware method invocation (`?.`) calls a method or accesses a property only if the object is not null.

```dart
void main() {
  String? nullableString;
  int? length = nullableString?.length;  // If nullableString is null, length is null

  print(length);  // Prints: null
}
```

### Using Late Variables

The `late` keyword is used to declare a variable that will be initialized later. It ensures that the variable is non-nullable but not immediately initialized.

```dart
void main() {
  late String nonNullableString;
  nonNullableString = 'Hello, Dart!';
  
  print(nonNullableString);  // Prints: Hello, Dart!
}
```

### Example with Null Safety

Here's a complete example demonstrating various null safety features:

```dart
void main() {
  String? nullableString = null;
  String nonNullableString = 'Hello, Dart!';

  // Using null-aware operator
  String greeting = nullableString ?? 'Default Greeting';
  print(greeting);  // Prints: Default Greeting

  // Using null-aware assignment
  nullableString ??= 'Assigned Greeting';
  print(nullableString);  // Prints: Assigned Greeting

  // Using null assertion operator
  int? nullableInt = 42;
  int nonNullableInt = nullableInt!;
  print(nonNullableInt);  // Prints: 42

  // Using null-aware method invocation
  int? length = nullableString?.length;
  print(length);  // Prints: 16 (length of "Assigned Greeting")

  // Using late variable
  late String lateString;
  lateString = 'Initialized Later';
  print(lateString);  // Prints: Initialized Later
}
```

In summary, Dart's null safety features help you to write safer and more reliable code by distinguishing between nullable and non-nullable types and providing various operators and keywords to handle null values effectively.
