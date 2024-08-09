In Dart, there are several types of loops that you can use to iterate over a collection of elements or execute a block of code repeatedly. The main types of loops in Dart are:

1. **For Loop**
2. **For-in Loop**
3. **While Loop**
4. **Do-While Loop**
5. **ForEach Method**

### 1. For Loop

The `for` loop is a control flow statement for specifying iteration. It consists of three parts: initialization, condition, and increment/decrement. It's commonly used when the number of iterations is known beforehand.

**Syntax:**

```dart
for (initialization; condition; increment/decrement) {
  // Code to execute in each iteration
}
```

**Example:**

```dart
void main() {
  for (int i = 0; i < 5; i++) {
    print(i);
  }
}
```

### 2. For-in Loop

The `for-in` loop is used to iterate over the elements of a collection (like a `List`, `Set`, or `Map`). It does not provide access to the index.

**Syntax:**

```dart
for (var element in collection) {
  // Code to execute for each element
}
```

**Example:**

```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Mango"];
  for (var fruit in fruits) {
    print(fruit);
  }
}
```

### 3. While Loop

The `while` loop repeatedly executes a block of code as long as the specified condition is `true`. It's used when the number of iterations is not known beforehand and depends on the condition.

**Syntax:**

```dart
while (condition) {
  // Code to execute while condition is true
}
```

**Example:**

```dart
void main() {
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
}
```

### 4. Do-While Loop

The `do-while` loop is similar to the `while` loop, but it guarantees that the code block is executed at least once. The condition is evaluated after the block is executed.

**Syntax:**

```dart
do {
  // Code to execute at least once
} while (condition);
```

**Example:**

```dart
void main() {
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);
}
```

### 5. ForEach Method

The `forEach` method is a functional approach to iterate over a collection. It takes a function as a parameter and applies it to each element in the collection.

**Syntax:**

```dart
collection.forEach((element) {
  // Code to execute for each element
});
```

**Example:**

```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Mango"];
  fruits.forEach((fruit) {
    print(fruit);
  });
}
```

### Summary

- **For Loop:** Use when the number of iterations is known.
- **For-in Loop:** Use for iterating over collections.
- **While Loop:** Use when the condition must be checked before the first iteration.
- **Do-While Loop:** Use when the condition must be checked after at least one iteration.
- **ForEach Method:** Use for a functional approach to iterate over collections.
