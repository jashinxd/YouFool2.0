import java.io.*;
import java.util.*;

PImage photo;

void setup() {
size(500,500);
    photo = loadImage("../static/map.jpg");
}

void draw() {
    image(photo, width/2, height/2);
    }