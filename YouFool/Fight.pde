class Fight {
    float p=200;
  float buttonX=150;
  float buttonY=1;

  Avatar avatar;


  void options () {
    avatar = new Avatar();
    attack();
    magic();
    block();
   
    if (mouseY >= buttonY+20 && mouseY<= buttonY) {
        if (mouseX >= buttonX && mouseX <= buttonX+50) {
          
        }
        if (mouseX >= buttonX+p && mouseX <= buttonX+p+50) {
        }
        if (mouseX >= buttonX+2*p && mouseX <= buttonX+2*p+50) {
        }
      }
    
   
   
   
    if (mousePressed) {
      if (mouseY >= buttonY+20 && mouseY<= buttonY) {
        if (mouseX >= buttonX-p && mouseX <= buttonX-p+50) {
          
        }
        if (mouseX >= buttonX && mouseX <= buttonX+50) {
          
        }
        if (mouseX >= buttonX+p && mouseX <= buttonX+p+50) {
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

