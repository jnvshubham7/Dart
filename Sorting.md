### 1. Bubble Sort

**Theory:** Bubble Sort is a simple comparison-based algorithm where each pair of adjacent elements is compared and swapped if they are in the wrong order. This process is repeated until the array is sorted.

```dart
void bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        // Swap
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}
```

### 2. Selection Sort

**Theory:** Selection Sort divides the list into a sorted and an unsorted region. It repeatedly selects the smallest (or largest) element from the unsorted region and moves it to the sorted region.

```dart
void selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    // Swap
    int temp = list[minIndex];
    list[minIndex] = list[i];
    list[i] = temp;
  }
}
```

### 3. Insertion Sort

**Theory:** Insertion Sort builds the sorted array one item at a time by repeatedly picking the next item and inserting it into its correct position.

```dart
void insertionSort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}
```

### 4. Merge Sort

**Theory:** Merge Sort is a divide-and-conquer algorithm that divides the array into halves, recursively sorts each half, and then merges the sorted halves to produce the final sorted array.

```dart
void mergeSort(List<int> list) {
  if (list.length > 1) {
    int mid = list.length ~/ 2;
    List<int> left = list.sublist(0, mid);
    List<int> right = list.sublist(mid);

    mergeSort(left);
    mergeSort(right);

    int i = 0, j = 0, k = 0;

    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        list[k] = left[i];
        i++;
      } else {
        list[k] = right[j];
        j++;
      }
      k++;
    }

    while (i < left.length) {
      list[k] = left[i];
      i++;
      k++;
    }

    while (j < right.length) {
      list[k] = right[j];
      j++;
      k++;
    }
  }
}
```

### 5. Quick Sort

**Theory:** Quick Sort is another divide-and-conquer algorithm that selects a pivot element and partitions the array into two halves, such that elements less than the pivot are on the left and elements greater than the pivot are on the right. It then recursively sorts the partitions.

```dart
void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);
    quickSort(list, low, pi - 1);
    quickSort(list, pi + 1, high);
  }
}

int partition(List<int> list, int low, int high) {
  int pivot = list[high];
  int i = (low - 1);
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }
  int temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;
  return i + 1;
}
```

### 6. Heap Sort

**Theory:** Heap Sort uses a binary heap data structure to sort elements. It repeatedly removes the maximum element from the heap and reconstructs the heap until it's empty.

```dart
void heapSort(List<int> list) {
  int n = list.length;
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(list, n, i);
  }
  for (int i = n - 1; i > 0; i--) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;
    heapify(list, i, 0);
  }
}

void heapify(List<int> list, int n, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < n && list[left] > list[largest]) {
    largest = left;
  }
  if (right < n && list[right] > list[largest]) {
    largest = right;
  }
  if (largest != i) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;
    heapify(list, n, largest);
  }
}
```




In Dart, there are several ways to sort collections, such as lists. The Dart language provides various methods to sort data, including using the `sort` method on lists, custom comparators, and the `sorted` method from the `collection` package. Here are some common sorting methods and examples:

### 1. **Using the `sort` Method**

The `sort` method is a built-in method for lists in Dart that sorts the elements in place.

#### Default Sorting

By default, `sort` orders elements in ascending order based on their natural ordering.

**Example:**

```dart
void main() {
  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort(); // Sorts the list in ascending order
  print(numbers); // Output: [1, 1, 3, 4, 5, 9]
}
```

#### Custom Comparator

You can provide a custom comparator function to define custom sorting logic.

**Example:**

```dart
void main() {
  List<String> words = ['apple', 'banana', 'pear', 'orange'];

  // Custom comparator to sort by string length
  words.sort((a, b) => a.length.compareTo(b.length));
  print(words); // Output: [pear, apple, banana, orange]

  // Sort in descending order
  words.sort((a, b) => b.compareTo(a));
  print(words); // Output: [pear, orange, banana, apple]
}
```

### 2. **Using the `reversed` Property**

The `reversed` property returns an iterable that iterates over the elements of a list in reverse order.

**Example:**

```dart
void main() {
  List<int> numbers = [3, 1, 4, 1, 5, 9];
  List<int> reversedNumbers = numbers.reversed.toList();
  print(reversedNumbers); // Output: [9, 5, 1, 4, 1, 3]
}
```

### 3. **Using the `sorted` Method (from `collection` package)**

The `sorted` method creates a new sorted list without modifying the original list. You need to include the `collection` package to use this method.

**Example:**
First, add the `collection` package to your `pubspec.yaml`:

```yaml
dependencies:
  collection: ^1.15.0
```

Then, use it in your code:

```dart
import 'package:collection/collection.dart';

void main() {
  List<int> numbers = [3, 1, 4, 1, 5, 9];
  List<int> sortedNumbers = numbers.sorted();
  print(sortedNumbers); // Output: [1, 1, 3, 4, 5, 9]
}
```

### 4. **Using `List.generate` and `sort`**

You can generate a list and sort it using the `List.generate` constructor and then use the `sort` method.

**Example:**

```dart
void main() {
  List<int> numbers = List.generate(10, (i) => 10 - i);
  print(numbers); // Output: [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  numbers.sort();
  print(numbers); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
}
```

### 5. **Sorting a List of Objects**

You can sort a list of custom objects by defining a comparator function.

**Example:**

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  List<Person> people = [
    Person('Alice', 30),
    Person('Bob', 25),
    Person('Charlie', 35)
  ];

  // Sort by age
  people.sort((a, b) => a.age.compareTo(b.age));
  people.forEach((person) => print('${person.name}, ${person.age}'));

  // Output:
  // Bob, 25
  // Alice, 30
  // Charlie, 35
}
```

### Summary

- **`sort` method:** Sorts a list in place, either using natural order or a custom comparator.
- **`reversed` property:** Returns an iterable with the elements in reverse order.
- **`sorted` method (from `collection` package):** Returns a sorted list without modifying the original.
- **Sorting custom objects:** Use a custom comparator to define sorting logic for custom objects.

These methods provide a variety of ways to sort data in Dart, allowing for both simple and complex sorting requirements.
