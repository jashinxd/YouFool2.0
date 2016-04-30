import java.io.*;
import java.util.*;
Avatar avatar;

PImage photo;

void setup() {
  size(1000, 700);
  photo = loadImage("../static/map.jpg");
  photo.resize(1200, 1200);
    avatar = new Avatar();
  avatar.x=100;
  avatar.y=500;

}

void draw() {

  image(photo, 0, 0);
  avatar.process();
  avatar.move();
    

}

