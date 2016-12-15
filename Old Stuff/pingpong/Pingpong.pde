/*
 *  Authors: Ben Pao (tpao@ucsc.edu)
 *           Aryan Samuel (arsamuel@ucsc.edu)
 *
 *  The following program plays a mini ping pong game.
 *  Keep the ball from going under the screen with the pad's help.
 *  Use the mouse the control the pad.
 *  The balls speed will slowly increase, and so will the number
 *  of balls.
 *  The width of the pad will slowly decrease as well.
 *  Good luck!
 *
 */

int SIZE = 500;
int ballAmount = 1;
float padX = SIZE/2;
float padY = SIZE-10;
float padWidth = 100;
float padHeight = 15;
int ballSize = 15;
int score=0;

float[] ballX = new float[100];
float[] ballY = new float[100];
float[] xSpeed = new float[100];
float[] ySpeed = new float[100];
color[] ballC = new color[100];


void setup() {
  size(SIZE, SIZE);  //resolution
  noLoop();          //call draw once
  for (int i=1; i<100; i++) { // initialize values for every ball
    ballX[i] = random(SIZE);
    ballY[i] = ballSize/2;
    ballC[i] = color(random(100, 255), random(100, 255), random(100, 255));
    xSpeed[i] = 2;
    ySpeed[i] = 2;
  }
  // initialize values for the first ball
  ballX[0] = padX;
  ballY[0] = padY-(padHeight/2)-(ballSize/2);
  ballC[0] = color(random(100, 255), random(100, 255), random(100, 255));
  xSpeed[0] = 2;
  ySpeed[0] = -2;
  println("Click the mouse to start");
}
void draw() {
  background(0);     //background color
  drawBall();        //calls funtion to draw a ball
  moveBall();        //calls funtion to move the ball
  bounceBall();      //calls funtion to bounce the ball
  if (frameCount%500 == 0) { // add one ball every 500 frames
    ballAmount = ballAmount+1;
  }
  pad();             //calls funtion to create and move a pad
  //  println(frameCount);
  //  println("x: "+ballX+ " y: "+ballY+" xspeed: "+xSpeed+" yspeed: "+ySpeed);
  text("Your Score: " +score, 10, 20);  //calls funtion to show score keeper
}

void drawBall() {  //draws an ellipse
  for (int i=0; i<ballAmount; i++) {
    noStroke();//no outline
    fill(ballC[i]);//ellipse color
    ellipse(ballX[i], ballY[i], ballSize, ballSize);//ellipse pos and size
  }
}

void moveBall() {        //function to move ellipse
  for (int i=0; i<ballAmount; i++) {
    ballX[i] = ballX[i]+xSpeed[i]; // move ball on x axis with xSpeed
    ballY[i] = ballY[i]+ySpeed[i]; //move ball on y axis with ySpeed
  }
}


void bounceBall() { // make ball bounce
  for (int i=0; i<ballAmount; i++) { // for every ball
  // if ball hits left or right edge
    if (ballX[i]<(ballSize/2)||ballX[i]>(SIZE-(ballSize/2))) {
      xSpeed[i] = -xSpeed[i]*1.03;
      ySpeed[i] = ySpeed[i]*1.03;
      ballC[i] = color(random(100, 255), random(100, 255), random(100, 255));
    } 
    //if ball hits the top
    if (ballY[i]<(ballSize/2)) {
      ySpeed[i] = -ySpeed[i]*1.03;
      xSpeed[i] = xSpeed[i]*1.03;
      ballC[i] = color(random(100, 255), random(100, 255), random(100, 255));
    }
    if (hitsPad(ballX[i], ballY[i])) {
      ySpeed[i] = -ySpeed[i]*1.03;
      xSpeed[i] = xSpeed[i]*1.03;
      ballC[i] = color(random(100, 255), random(100, 255), random(100, 255));
      score = score+1;
      padWidth = padWidth*0.99;
    }
    if (ballY[i]>SIZE) {
      noLoop();
    }
  }
}

void pad() {        //create a pad
  fill(255);        //pad color
  rectMode(CENTER); //centered scale rectangle
  rect(padX, padY, padWidth, padHeight); //rectangle pos and size
  padX = mouseX;    //move pad with mouse on x axis
}

boolean hitsPad(float x, float y) {    //calculate value for ball if it hits the pad
  if ((y+(ballSize/2))>(padY-(padHeight/2)) &&  //if ball's edge touches the pad's top edge
  x<(padX+(padWidth/2)) &&  //if ball's xPos is less than pad's yPos
  x>(padX-(padWidth/2))) {  //if ball's xPos is greater than the pad's yPos
    return true;                  //return true value
  } else {             //otherwise
    return false;      //return false value
  }
}

void mousePressed() {  //when the mouse is pressed
  loop();              //initiate the program/game
}

