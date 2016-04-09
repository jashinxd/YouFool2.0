class Avatar {
  float x = 100;
  float y = 500;
  float Espawn = 100;
  String state = "forward";
  int diameter = 50;
  float health = 20;
  float speed = 4;
  PImage up;
  PImage down;
PImage left;
PImage right;
  void process() {
    up = loadImage("../sprites/characterup.jpg");
    down = loadImage("../sprites/characterdown.jpg");
    left = loadImage("../sprites/characterleft.jpg");
    right = loadImage("../sprites/characterright.jpg");

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
    if (Espawn <= 1) {
      state = "fight";
    }
    if (state == "fight") {
      background(random(255),random(255),random(255));
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
    image(down,x,y);
  }

  void l() {
    image(left,x,y);
  }

  void r() {
    image(right,x,y);
  }

  void b() {
    image(down,x,y);
  }
}

