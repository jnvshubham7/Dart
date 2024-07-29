class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

void main() {
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound();
  cat.makeSound();
}
