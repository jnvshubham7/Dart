abstract class Shape {
  double area();
}


// class Shape{
//   double area(){
//     return 0;
//   }

// }

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  Shape circle = Circle(6);
  Shape rectangle = Rectangle(2, 3);

  print('Circle area: ${circle.area()}');
  print('Rectangle area: ${rectangle.area()}');
}
