
class Character {
  float x = 100;
  float y = 500;
  float Espawn = 100;
  String state = "forward";
  int diameter = 50;
  float health = 20;
  float speed = 9.75;
  PImage character;


  void process() {
    character = loadImage("../static/map.jpg");
    character.resize(1200, 1200);
    if (state == "forward") {
      f();
    }
    if (state == "backward") {
      b();
    }
    if (state == "left") {
      l();
    }
    if (state == "right") {
      r();
    }
    if (Espawn <= 7) {
      state = "fight";
    }
    if (state == "fight") {
    }
  }

  void move() {
    if (keyPressed && state != "fight") {

      if (key == 's') {
        Espawn = random(100);
        state = "forward";
        y = y + speed;
      }
      if (key == 'd') {
        Espawn = random(100);
        state = "right";
        x = x + speed;
      }
      if (key == 'a') {
        Espawn = random(100);
        state = "left";
        x = x - speed;
      }
      if (key == 'w') {
        Espawn = random(100);
        state = "backward";
        y = y - speed;
      }
    }
  }

  void f() {
  }

  void l() {
  }

  void r() {
  }

  void b() {
  }
}

