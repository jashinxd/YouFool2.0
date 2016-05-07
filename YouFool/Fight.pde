class Fight {
  float p=200;
  float buttonX=width/2 - 50;
  float buttonY=1;
  int health;
  int mana;
  float job=2;
  float enemy=1;
  int enemyH = 50;
  PImage enemy1;
  PImage enemy2;
  PImage enemy3;
  PImage enemy4;
  PImage enemy5;
  float encounter; 
  float ex=width/2;
  float ey=height/2;
  int es=1;
  int w = 100;
  int v = 10;
  float speedX=7;

  void options () {
    ex=ex+speedX;


    enemy1 = loadImage("../sprites/enemy0.png");
    enemy2 = loadImage("../sprites/enemy1.png");
    enemy3 = loadImage("../sprites/enemy2.png");
    enemy4 = loadImage("../sprites/enemy3.png");
    enemy5 = loadImage("../sprites/enemy4.png");
    enemy1.resize(0,80);
    enemy2.resize(0,80);
    enemy3.resize(0,80);
    enemy4.resize(0,80);
    enemy5.resize(0,80);
    background(#9c9c9c);
    fill(#737373);
    rect(200, 200, 600, 300);
    attack();
    magic();
    block();
    if (ex >=720) {
      speedX=-speedX;
    }
    if (ex <=200) {
      speedX=-speedX;
    }



    if (encounter <= 0.2) {
      textSize(90);
      image(enemy1, ex, ey);
      fill(#00ffff);
      text("Skeleton Guard", 400, 150);
    } else if (encounter <= 0.4) {
      textSize(90);
      image(enemy2, ex, ey);
      fill(#00ffff);
      text("Skeletim", 400, 150);
    } else if (encounter <= 0.6) {
      textSize(90);
      image(enemy3, ex, ey);
      fill(#00ffff);
      text("SkeletonMage", 400, 150);
    } else if (encounter <= 0.8) {
      textSize(90);
      image(enemy4, ex, ey);
      fill(#00ffff);
      text("Orc", 400, 150);
    } else if (encounter <= 1.0) {
      textSize(90);
      image(enemy5, ex, ey);
      fill(#00ffff);
      text("Deamon", 400, 150);
    }



    if (enemy == 2) {
      if (job == 1) {
        health = health - (int)random(8, 14);
      }
      if (job == 2) {
        health = health - (int)random (6, 11);
      }
      try {
        Thread.sleep(500);                 //1000 milliseconds is one second.
      } 
      catch(InterruptedException ex) {
        Thread.currentThread().interrupt();
      }
      enemy = 1;
    }
    if (enemy == 1) {
      if (mousePressed) {
        if (mouseY <= buttonY+50 && mouseY>= buttonY) {
          if (mouseX >= buttonX-p && mouseX <= buttonX-p+100) {

            if (job == 1) {
              enemyH = enemyH - (int)random(5, 10);
            }
            if (job == 2) {
              enemyH = enemyH - (int)random (7, 13);
            }
            try {
              Thread.sleep(500);                 //1000 milliseconds is one second.
            } 
            catch(InterruptedException ex) {
              Thread.currentThread().interrupt();
            }
            enemy = 2;
          }
          if (mouseX >= buttonX && mouseX <= buttonX+100) {

            if (mana > 7) {
              if (job == 1) {
                enemyH = enemyH - (int)random(8, 14);
                mana = mana - (int)random(7, 9) ;
              }
              if (job == 2) {
                enemyH = enemyH - (int)random (4, 9); 
                mana = mana - (int)random(7, 9);
              }
              try {
                Thread.sleep(500);                 //1000 milliseconds is one second.
              } 
              catch(InterruptedException ex) {
                Thread.currentThread().interrupt();
              }
              enemy = 2;
            }
          }

          if (mouseX >= buttonX+p && mouseX <= buttonX+p+100) {

            rect(100, 100, 100, 100);
            try {
              Thread.sleep(500);                 //1000 milliseconds is one second.
            } 
            catch(InterruptedException ex) {
              Thread.currentThread().interrupt();
            }
            enemy = 2;
          }
        }
      }
    }

    textSize(50);
    fill(#00ff00);
    text("HEALTH: "+health, 50, 100);
    fill(#0000ff);
    text("MANA: "+mana, 50, 150);
    fill(#ff0000);
    textSize(50);
    text("ENEMY HEALTH:"+enemyH, 225, 600);
  }


  void attack () {
    textSize(20);
    fill(#DC143C);
    rect(buttonX-p, buttonY, 100, 50);
    String a = "Attack";
    fill(50);
    text(a, 265, 10, 70, 80);
  }
  void magic () {
    textSize(20);
    fill(#1874CD);
    rect(buttonX, buttonY, 100, 50);
    String m = "Magic";
    fill(50);
    text(m, 465, 10, 70, 80);
  }
  void block () {
    textSize(20);
    fill(#00EE00);
    rect(buttonX+p, buttonY, 100, 50);
    String b = "Block";
    fill(50);
    text(b, 665, 10, 70, 80);
  }
}

