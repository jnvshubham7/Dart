In Flutter, `SizedBox` is a widget that allows you to create a box with a specific width, height, or both. It's commonly used to add spacing between widgets or to force a widget to have a certain size.

### Common Use Cases of `SizedBox`:

1. **Spacing between Widgets**:
   You can use `SizedBox` to add space between two widgets.

   ```dart
   Column(
     children: [
       Text('First Widget'),
       SizedBox(height: 20), // Adds vertical space of 20 pixels
       Text('Second Widget'),
     ],
   )
   ```
2. **Fixed Width or Height for a Widget**:
   You can constrain a widget to a specific width or height.

   ```dart
   SizedBox(
     width: 100,
     height: 50,
     child: ElevatedButton(
       onPressed: () {},
       child: Text('Button'),
     ),
   )
   ```
3. **Empty Box**:
   A `SizedBox` with no child can also be used to create an empty space with a specific size.

   ```dart
   SizedBox(
     width: 50, // Adds horizontal space of 50 pixels
     height: 50, // Adds vertical space of 50 pixels
   )
   ```

### Constructor

The basic constructor for `SizedBox` looks like this:

```dart
SizedBox({
  Key? key,
  double? width,
  double? height,
  Widget? child,
})
```

- **`width`**: The width of the box.
- **`height`**: The height of the box.
- **`child`**: The widget that is constrained by the `SizedBox`.

### Example:

```dart
SizedBox(
  width: 150,
  height: 150,
  child: Container(
    color: Colors.blue,
  ),
)
```

In this example, the `Container` will be constrained to a width and height of 150 pixels due to the `SizedBox`.
