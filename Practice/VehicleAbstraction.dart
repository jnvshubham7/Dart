abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print('Car started');
  }

  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('Bike started');
  }

  @override
  void stop() {
    print('Bike stopped');
  }
}

void main() {
  Vehicle car = Car();
  Vehicle bike = Bike();

  car.start();
  car.stop();

  bike.start();
  bike.stop();
}
