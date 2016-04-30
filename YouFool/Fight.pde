class Fight {
  float p=200;
  float buttonX=width/2 - 50;
  float buttonY=1;
  float health;
  float mana;
  float job;
  float enemy;


  void options (Avatar avatar) {
    background(#9c9c9c);
    attack();
    magic();
    block();

    if ( job == 1 ) {
      //mage
      mana = 100; 
      health = 40;
    }
    if ( job == 2 ) {
      //warrior
      mana = 20; 
      health = 75;
    }
    
        if (enemy == 2){
    if(job == 1){
      health = health - random(7,13);
    }
    if(job == 2){
     health = health - random (5,10); 
    }
    enemy = 1;
    }
    if (enemy != 2) {
      if (mousePressed) {
        if (mouseY <= buttonY+50 && mouseY>= buttonY) {
          if (mouseX >= buttonX-p && mouseX <= buttonX-p+100) {
    enemy = 2;
          }
          if (mouseX >= buttonX && mouseX <= buttonX+100) {
            rect(100, 100, 100, 100);
            enemy = 2;
          }
          if (mouseX >= buttonX+p && mouseX <= buttonX+p+100) {
            rect(100, 100, 100, 100);
            enemy = 2;
          }
        }
      }
    }
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

