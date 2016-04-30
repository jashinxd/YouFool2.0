class Fight {
    float p=200;
  float buttonX=width/2 - 50;
  float buttonY=1;

  Avatar avatar;


  void options () {
    avatar = new Avatar();
    attack();
    magic();
    block();
    if (mousePressed) {
      if (mouseY <= buttonY+20 && mouseY>= buttonY) {
        if (mouseX >= buttonX-p && mouseX <= buttonX-p+50) {
            text (50,300,300);
        }
        if (mouseX >= buttonX && mouseX <= buttonX+50) {
          text (50,300,300);
          avatar.mana = avatar.mana - random(2,5);
        }
        if (mouseX >= buttonX+p && mouseX <= buttonX+p+50) {
            text (50,300,300);
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

