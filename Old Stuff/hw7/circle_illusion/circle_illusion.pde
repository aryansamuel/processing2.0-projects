/*
 * Author: Ben Pao, tpao@ucsc.edu
 *         Aryan Samuel, arsamuel@ucsc.edu
 *
 * This program creates an illusion with the use of squares
 * and circles. The illusion works in such a manner that it
 * makes the square appear to bend even though it remains static.
 */
 
int a = 80;
int b = 220;
int xspeed = 1;
int yspeed = 1;

void setup() {
  size(300,300);
  background(0);
}

void draw() {
  background(0);
  fill(0);
  stroke(255);
  rect(width/3, height/3, width/3, height/3);  //white square
  noStroke();
  fill(120);    //fill dark grey
  ellipse(a, 150, 70, 70);    //left big ball
  ellipse(b, 150, 70, 70);   //right big ball
  ellipse(150, a, 70, 70);    //top big ball
  ellipse(150, b, 70, 70);   //bot big ball
  fill(240);   //fill light grey
  ellipse(b - 130, 150, 20, 20);   //left small ball
  ellipse(a+130, 150, 20, 20);   //right small ball
  ellipse(150, b - 130, 20, 20);   //top small ball
  ellipse(150, a+130, 20, 20);   //bot small ball
  a = a - xspeed;    //set speed of left and right circles
  if ((a < 35) || (a > 87)) { //set constraing for circles
    xspeed = -xspeed * 1; //intiate speed
  }
  b = b + xspeed;    //set speed for top and bottom circles
  if ((b > 240) || (b < 200)) {   //set constraints for circles
    xspeed = xspeed * 1;  //initiate speed
  }
}
