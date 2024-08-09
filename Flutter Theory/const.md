In Dart, the `const` keyword is used to define compile-time constants. These constants are immutable and must be known at compile time. Unlike `final` variables, which are initialized at runtime and can be assigned only once, `const` variables are evaluated and set during compilation.

### Key Characteristics of `const`

1. **Compile-time Constant**: The value must be known at compile time.
2. **Immutable**: The value cannot be changed once assigned.
3. **Const Context**: `const` can be used to create constant values, constant constructors, and constant expressions.

### Example Usages of `const`

#### 1. Simple Usage

```dart
void main() {
  const double pi = 3.14159;

  // Attempting to reassign will cause an error
  // pi = 3.14;  // Error: Constants can't be assigned a value.

  print(pi);  // Prints: 3.14159
}
```

In this example, `pi` is declared as a `const` variable and assigned a compile-time constant value.

#### 2. Const Constructors in Classes

```dart
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  const Point p1 = Point(2, 3);
  const Point p2 = Point(4, 5);

  print('Point p1: (${p1.x}, ${p1.y})');  // Prints: Point p1: (2, 3)
  print('Point p2: (${p2.x}, ${p2.y})');  // Prints: Point p2: (4, 5)

  // Attempting to change x or y will cause an error
  // p1.x = 10;  // Error: The setter 'x' isn't defined for the class 'Point'.
}
```

In this example, the `Point` class has a `const` constructor, allowing the creation of compile-time constant instances of `Point`.

#### 3. Using `const` with Lists and Collections

```dart
void main() {
  const List<int> numbers = [1, 2, 3];

  // The list itself and its contents cannot be changed
  // numbers.add(4);  // Error: Unsupported operation: Cannot add to an unmodifiable list
  // numbers[0] = 10; // Error: Unsupported operation: Cannot modify an unmodifiable list

  print(numbers);  // Prints: [1, 2, 3]
}
```

In this example, the `numbers` list is declared as `const`, making the list and its contents immutable.

### Difference Between `const` and `final`

- **const**: Variables are compile-time constants and cannot be changed. Suitable for values that are known at compile time and will never change.
- **final**: Variables can only be set once and can be initialized at runtime. Suitable for read-only properties that are determined during execution.

#### Example Comparing `const` and `final`

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

### Using Const Constructors with Immutable Objects

Creating immutable objects using `const` constructors ensures that the object and its properties cannot be changed once they are created.

```dart
class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  const point = ImmutablePoint(5, 10);
  print('ImmutablePoint: (${point.x}, ${point.y})');  // Prints: ImmutablePoint: (5, 10)

  // Attempting to modify the object will cause an error
  // point.x = 20;  // Error: The setter 'x' isn't defined for the class 'ImmutablePoint'.
}
```

### Const Expressions

Const expressions are expressions that can be evaluated at compile time. They can involve literals, const variables, and const constructors.

```dart
void main() {
  const int width = 10;
  const int height = 20;
  const int area = width * height;

  print('Area: $area');  // Prints: Area: 200
}
```

In this example, the `area` variable is a const expression calculated at compile time.

Using `const` helps you define immutable values and objects that are known at compile time, making your code more predictable and reducing potential runtime errors.
