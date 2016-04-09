
class Character {
  float x = 100;
  float y = 500;
  int state = forward;
  int diameter = 50;
  float health = 60;
  float speed = 9.75;
  photo = loadImage("../static/map.jpg");
  photo.resize(1200, 1200);

  void process() {
    if (state == forward) {
      f();
    }
    if (state == backward) {
      b();
    }
    if (state == left) {
      l();
    }
    if (state == right) {
      r();
    }
  }

  void move() {
    if (keyPressed) {

      if (key == 's') {
        state = forward;
        y = y + speed;
      }
      if (key == 'd') {
        state = right;
        x = x + speed;
      }
      if (key == 'a') {
        state = left;
        x = x - speed;
      }
      if (key == 'w') {
        state = backward;
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

