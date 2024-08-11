/* An abstract class in Dart:
Defines a Blueprint: Specifies methods that must be implemented by subclasses.
Cannot Be Instantiated: You cannot create objects of an abstract class directly.
Enforces Structure: Ensures that all subclasses follow a specific structure or interface.*/
  
 abstract class Shape{
  double area();
  }

class Circle extends Shape {
  double pi;
  int rad;
  Circle(this.pi, this.rad);

  @override
  double area(){    
  double answer = pi * rad * rad;
  return answer;
  }
}

class Rectangle extends Shape {
  double len;
  double brt;
  Rectangle (this.len, this.brt);

  @override
  double area(){
  double answer = len * brt;
  return answer;
  }
}

void main (){
Circle cir = Circle (2.1,2);
Rectangle rec = Rectangle (4,1546794);
print('Circle area: ${cir.area()}');
print('rectangle: ${rec.area()}');

}