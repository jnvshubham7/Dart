In Flutter, a `Stack` widget allows you to overlay multiple widgets on top of each other. This is useful when you want to create complex layouts where widgets are positioned relative to each other.

### Key Points about `Stack`:

- **Positioning**: By default, `Stack` positions its children in the top-left corner. You can use `Positioned` widgets to place them at specific locations.
- **Children**: The `Stack` widget can contain multiple children, and they are displayed in the order they are listed. The first child is at the bottom, and the last child is on top.
- **Alignment**: You can control the alignment of the entire stack using the `alignment` property.
- **Fit**: The `fit` property determines how the non-positioned children are sized in the stack (using `StackFit.expand`, `StackFit.loose`, etc.).

### Example Usage:

Here’s a basic example of how to use `Stack` in a Flutter app:

```dart
Stack(
  alignment: Alignment.center,
  children: <Widget>[
    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),
    Container(
      width: 150,
      height: 150,
      color: Colors.green,
    ),
    Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ),
  ],
)
```

### Explanation:

- The `Stack` widget contains three containers.
- The first two containers are not positioned explicitly, so they are placed on top of each other, centered by the `alignment` property.
- The third container is positioned using the `Positioned` widget, which places it 10 pixels from the bottom and 10 pixels from the right of the stack.

`Stack` is a powerful widget for creating layered UIs, like overlapping images, text, or icons in a custom layout.
