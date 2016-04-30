class Fight {
  float p=200;
  float buttonX=width/2 - 50;
  float buttonY=1;
  float mana = 50;


  void options () {
    background(#9c9c9c);
    attack();
    magic();
    block();
    if (mousePressed) {
      if (mouseY <= buttonY+50 && mouseY>= buttonY) {
        if (mouseX >= buttonX-p && mouseX <= buttonX-p+100) {
          //text (50, 300, 300);
          rect(100, 100, 100, 100);
        }
        if (mouseX >= buttonX && mouseX <= buttonX+100) {
          rect(100, 100, 100, 100);
        }
        if (mouseX >= buttonX+p && mouseX <= buttonX+p+100) {
          rect(100, 100, 100, 100);
        }
      }
    }
  }


  void attack () {
    fill(#DC143C);
    rect(buttonX-p, buttonY, 100, 50);
  }
  void magic () {
    fill(#1874CD);
    rect(buttonX, buttonY, 100, 50);
  }
  void block () {
    fill(#00EE00);
    rect(buttonX+p, buttonY, 100, 50);
  }
}

