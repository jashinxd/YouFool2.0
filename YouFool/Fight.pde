class Fight {
  float p=200;
  float buttonX=width/2 - 50;
  float buttonY=1;
  float health;
  float mana;
  float job=2;
  float enemy=1;
  float enemyH = 50;

  void options () {
    background(#9c9c9c);
    attack();
    magic();
    block();




    if (enemy == 2) {
      if (job == 1) {
        health = health - random(8, 14);
      }
      if (job == 2) {
        health = health - random (6, 11);
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
              enemyH = enemyH - random(5, 10);
            }
            if (job == 2) {
              enemyH = enemyH - random (7, 13);
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
            if (mana > 7){
            if (job == 1) {
              enemyH = enemyH - random(8, 14);
              mana = mana - random(7,9) ;
            }
            if (job == 2) {
              enemyH = enemyH - random (4, 9); 
              mana = mana - random(7,9);
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
    text(health, 100, 100);
    text(mana, 100, 300);
    text(enemyH, 100, 500);
  }


  void attack () {
    fill(#DC143C);
    rect(buttonX-p, buttonY, 100, 50);
    String a = "Attack";
    fill(50);
    text(a, 300, 10, 70, 80);
  }
  void magic () {
    fill(#1874CD);
    rect(buttonX, buttonY, 100, 50);
    String m = "Magic";
    fill(50);
    text(m, 500, 10, 70, 80);
  }
  void block () {
    fill(#00EE00);
    rect(buttonX+p, buttonY, 100, 50);
    String b = "Block";
    fill(50);
    text(b, 700, 10, 70, 80);
  }
}

