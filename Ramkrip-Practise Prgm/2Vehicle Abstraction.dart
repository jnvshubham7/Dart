abstract class Vehicle{
void start();
void stop();
}

class Car extends Vehicle {
  String a;
  Car (this.a);
  
  @override
  void start (){
  print('The Vehicle car is Started');
  }
  
  @override
  void stop(){
    print ('The vehicle car is Stopped');
  }
}

class Bike extends Vehicle {
  String b;
  Bike (this.b);

  @override
  void start(){
  print('The Vehicle Bike is Started');
  }

  @override
  void stop (){
  print ('The vehicel is Bike is Stopped');
  }
  
}

void main(){
  Car ca = Car ('Car A');
  Bike ba = Bike ('Bike B');
  ca.start();
  ca.stop();
  ba.start ();
  ba.stop ();
 

}

