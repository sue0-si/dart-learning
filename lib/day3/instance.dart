void main() {
  final hero = Hero('nammme', 30);
}

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack() {

  }

  void run() {

  }
}

class Car {
  List<Door> doors = [];
  String color = 'red';
  String number = '18어9756';
  double speed = 0.0;

  bool isStarting = false;

  void start() {
    isStarting = true;
  }
  void drive() {
    if (isStarting) {
      // do sthg
    }
  }
}
class Wheel {

}

class Door {

}