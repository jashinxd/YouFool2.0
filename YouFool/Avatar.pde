class Avatar {
  float x = 100;
  float y = 500;
  float random = 400;
  float Espawn = 100;
  String state = "forward";
  int diameter = 50;
  float health = 100;
  float mana = 50;
  float speed = 4;
  PImage up;
  PImage down;
  PImage left;
  PImage right;
  Fight fight;

  void process() {
    fight = new Fight();
    up = loadImage("../sprites/characterup.jpg");
    down = loadImage("../sprites/characterdown.jpg");
    left = loadImage("../sprites/characterleft.jpg");
    right = loadImage("../sprites/characterright.jpg");
    if (keyPressed) {
      if (key == 'r') {
        Espawn = 40;
      }
    }
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
    if (Espawn <= 3) {
      state = "fight";
    }
    if (state == "fight") {
      //text(mana,100,100);
      fight.options(this);
      //text(mana,300,100);
    }
  }

  void move() {
    if (keyPressed) {
      if (key == 'r') {
        Espawn = 40; 
        state = "foward";
      }
    }

    if (keyPressed && state != "fight") {

      if (key == 's') {
        Espawn = random(random);
        state = "forward";
        y = y + speed;
      }
      if (key == 'd') {
        Espawn = random(random);
        state = "right";
        x = x + speed;
      }
      if (key == 'a') {
        Espawn = random(random);
        state = "left";
        x = x - speed;
      }
      if (key == 'w') {
        Espawn = random(random);
        state = "backward";
        y = y - speed;
      }
    }
  }

  void f() {
    image(down, x, y);
  }

  void l() {
    image(left, x, y);
  }

  void r() {
    image(right, x, y);
  }

  void b() {
    image(up, x, y);
  }
}

