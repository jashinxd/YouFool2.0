import java.io.*;
import java.util.*;
Avatar avatar;
  Fight fight;

PImage photo;
float number=1;

void setup() {
  size(1000, 700);
  photo = loadImage("../static/map.jpg");
  photo.resize(1200, 1200);
  avatar = new Avatar();
  avatar.x=100;
  avatar.y=500;
fight = new Fight();
}

void draw() {

  image(photo, 0, 0);
  avatar.process();
  avatar.move();

  text(number, 500, 500);
  number=number+1;
    if (avatar.state != "fight"){
    if ( fight.job == 1 ) {
      //mage
      fight.mana = 100; 
      fight.health = 40;
    }
    if ( fight.job == 2 ) {
      //warrior
      fight.mana = 20; 
      fight.health = 75;
    }
    }
 if (avatar.state == "fight"){
   
   fight.options();
  if(fight.enemyH <= 0){
  avatar.Espawn = 40;
    avatar.state ="foward" ; 
  }
 }




}


