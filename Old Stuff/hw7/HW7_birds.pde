/*
 *
 * Author: Ben Pao, tpao@ucsc.edu
 *         Aryan Samuel, arsamuel@ucsc.edu
 *
 * This program is an animation of three
 * birds flying across the sky in the sunset
 *
 */

int timer = 0;
float birdX1 = random(-40, -20);
float birdY1 = random(20, 190);
float birdX2 = random(-40, -20);
float birdY2 = random(20, 190);
float birdX3 = random(-40, -20);
float birdY3 = random(-20, 190);

void setup() {
  // frame size
  size(600, 300);
  // how fast the frame refreshes  
  frameRate(50);
}

void draw() {
  background(255, 57, 35); //Sky

  // yellow sun
  noStroke();
  fill(255, 248, 39);
  arc(400, height, 120, 120, PI, 2*PI);

  timer = frameCount % 60;
  drawBird(birdX1, birdY1);
  drawBird(birdX2, birdY2);
  drawBird(birdX3, birdY3);
  birdX1 = (birdX1+0.7)%(width+100);
  birdX2 = (birdX2+0.7)%(width+100);
  birdX3 = (birdX3+0.7)%(width+100);
  birdY1 = birdY1-random(3)/50;
  birdY2 = birdY2+random(3)/50;
  birdY3 = birdY3-random(3)/50;
  
  if (birdX1 > width+50) {
    birdX1 = random(-60, -10);
    birdY1 = random(20, 210);
  }
  
  if (birdX2 > width+50) {
    birdX2 = random(-60, -10);
    birdY2 = random(20, 210);
  }
  
  if (birdX3 > width+50) {
    birdX3 = random(-60, -10);
    birdY3 = random(20, 210);
  }
}

void drawBird(float birdX, float birdY) {

  stroke(0);
  strokeWeight(3); //width of the stroke
  noFill();

  // bird
  if (timer<=30) {
    beginShape();
    vertex(birdX-30, birdY);
    bezierVertex(birdX-32, birdY-10, 
    birdX+5, birdY-15, 
    birdX, birdY);
    bezierVertex(birdX-5, birdY-15, 
    birdX+32, birdY-10, 
    birdX+30, birdY);
    endShape();
  } else if (timer>30) {
    beginShape();
    vertex(birdX-28, birdY-15);
    bezierVertex(birdX-24, birdY-20, 
    birdX+5, birdY-10, 
    birdX, birdY);
    bezierVertex(birdX-5, birdY-10, 
    birdX+24, birdY-20, 
    birdX+28, birdY-15);
    endShape();
  }
}

