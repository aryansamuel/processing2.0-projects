/*
 *
 * Author: Ben Pao, tpao@ucsc.edu
 *         Aryan Samuel, arsamuel@ucsc.edu
 *
 * This program draws a marble-like color
 * with either red, green, or blue.
 * The color can be controlled by pressing the mouse.
 *
 */

int SIZE = 400;
int mode = 0; // mode of the color
int r=0; // red
int g=0; // green
int b=0; // blue

void setup() {
  size(SIZE, SIZE);
  println (" press the mouse to change color");
}

void draw() {
  background(0); // black
  for (int col=0; col<SIZE; col++) {
    for (int row=0; row<SIZE; row++) {
      // for every pixel
      if (random(1) != 1) { // 50% of the chance
        colorChange(); // function that changes color
        stroke(r, g, b); // color of the point
      } else {
        stroke(0); // black
      }
      point(col, row); // coordinates of the pixel
    }
  }
}

void colorChange() {
  if (mode == 0) { // then red
    r = int (random(255));
    g = 0;
    b = 0;
  } else if (mode == 1) { // then green
    r = 0;
    g = int (random(255));
    b = 0;
  } else if (mode == 2) { // then blue
    r = 0;
    g = 0;
    b = int (random(255));
  }
}

void mousePressed() {
  mode = (mode+1) % 3; // change the mode between 0, 1, and 2
}

