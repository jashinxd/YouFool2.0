import java.io.*;
import java.util.*;
Avatar avatar;
  Fight fight;
 

PImage photo;
int boss;


void setup() {
  size(1000, 700);

  photo = loadImage("../sprites/grass.jpg");
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


    if (avatar.state != "fight"){
    if ( fight.job == 1 ) {
      //mage
      
      fight.encounter = random(1);
      fight.mana = 100; 
      fight.health = 40;
      enemyH = 50;
    }
    if ( fight.job == 2 ) {
      //warrior
      fight.encounter = random(1);
      fight.mana = 20; 
      fight.health = 75;
      enemyH = 50;
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


