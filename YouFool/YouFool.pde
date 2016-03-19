import java.io.*;
import java.util.*;

PImage photo;

void setup() {
size(500,500);
    photo = loadImage("../static/map.jpg");
    photo.resize(1200, 1200);
}

void draw() {
    image(photo, 0, 0);
    }