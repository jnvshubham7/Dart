In Flutter, `Future<void>` is commonly used for asynchronous functions that don't return any value. These functions typically perform an operation that takes time, such as making a network request, reading a file, or waiting for some event, but they don't return a result to the caller. Here's a basic example:

```dart
Future<void> fetchData() async {
  // Simulate a delay (e.g., network request)
  await Future.delayed(Duration(seconds: 2));

  // Perform some action
  print("Data fetched");
}
```

In this example:

- `Future<void>` indicates that the function `fetchData` performs some asynchronous operation but does not return a value.
- The `async` keyword allows the use of `await` inside the function, enabling it to pause execution until the asynchronous operation is complete.

This pattern is widely used when you need to perform some background task but don't need to return any data.
