abstract class Animal {
  String sound;
  String name;
  int alter;

  Animal(
    this.name, this.alter, this.sound
  );
  
  Direction direction = Direction.forward;
  
  int x = 0;
  int y = 0;

  void move() {
    switch (direction) {
      case Direction.forward:
        y++;
        break;
      case Direction.backward:
        y--;
        break;
      case Direction.left:
        x--;
        break;
      case Direction.right:
        x++;
        break;
    }
  }

  void makeSound() {
    print(sound);
  }

  void printInformation() {
    print('');
  }
}

abstract class CanFly {
  void fly();
}

abstract class CanWalk {
  void walk();
}

abstract class CanBreatheUnderWater {
  void breatheUnderWater();
}

abstract class CanSwim {
  void swim();
}

class Fisch extends Animal implements CanBreatheUnderWater, CanSwim {
  String fischArt;
  int groesse;

  Fisch(
    super.name, super.alter, super.sound, this.fischArt, this.groesse
  );

  @override
  String swim() {
    return '$name kann schwimmen';
  }

  @override
  void breatheUnderWater() {
    print('$name atmet unter Wasser.');
  }
}

class Goldfisch extends Fisch {
  int flossenGroesse;

  Goldfisch(
    String name, int alter, String fischArt, int groesse, this.flossenGroesse
  ) : super(name, alter, "Blubb", fischArt, groesse);

  @override
  String makeSound() {
    return sound;
  }

  @override
  void printInformation() {
    print('$name ist ein $fischArt und $alter Jahre alt. Es macht immer mal wieder gern ${makeSound()}. ${swim()}. $name ist ungefähr $groesse cm groß und seine Flosse ist $flossenGroesse cm groß.');
  }
}

enum Direction {
  forward, backward, left, right
}