/*  Homework 6: Blinky
 *  CMPS10 - Winter 2015
 *  Author: Aryan Samuel
 *  This program draws a static image of 
 *  the red ghost, Blinky, from the ancient game of Pac-Man.
 */

int colorx = color(255,0,0); //Blinky's initial color
int xPos = 120; //initial pos of Blinky's middle rect
int x = 0;
int look = 0;  //look = 0 is left
               //look = 1 is center
               //look = 2 is right

void setup() {
  size(600, 200); //create the screen
  noStroke();     //no outlines
  smooth();       //make smooth geometry lines
}

void draw() {
  background(0);             //background fills black
//BODY
  fill(colorx);
  rect(50+x, 70, 10, 90);    //Bar 1
  rect(60+x, 40, 10, 130);   //Bar 2
  rect(70+x, 30, 10, 140);   //Bar 3
  rect(80+x, 20, 10, 140);   //Bar 4
  rect(90+x, 20, 10, 130);   //Bar 5
  rect(100+x, 10, 10, 150);  //Bar 6
  rect(110+x, 10, 10, 160);  //Bar 7
  rect(xPos+x, 10, 10, 160);  //Bar 8
  rect(130+x, 10, 10, 150);  //Bar 9
  rect(140+x, 20, 10, 130);  //Bar 10
  rect(150+x, 20, 10, 140);  //Bar 11
  rect(160+x, 30, 10, 140);  //Bar 12
  rect(170+x, 40, 10, 130);  //Bar 13
  rect(180+x, 70, 10, 90);   //Bar 14

//EYES
  fill(255);                           //fill white for sclera
  rect(60 + (look*10)+x, 50, 40, 30);  //horizontal rect for left eye
  rect(70 + (look*10)+x, 40, 20, 50);  //vertical rect for left eye
  rect(120 + (look*10)+x, 50, 40, 30); //horizontal rect for right eye
  rect(130 + (look*10)+x, 40, 20, 50); //vertical rect for right eye

//PUPILS
  fill(0,0,255);                       //fill blue for pupil
  rect(60 + (look*20)+x, 60, 20, 20);  //square rect for left pupil
  rect(120 + (look*20)+x, 60, 20, 20); //square rect for right pupil
  
  x = x+(look-1);   //move Blinky and eyes depending on look
  
  if (mouseX < xPos+x) {  //if mouse left of Blinky
    look=0;               //move Blinky and eyes left
  }
  if(mouseX == xPos+x){   //if mouse center of Blinky
    look=1;               //center Blinky and eyes
  }
  if(mouseX > xPos+x){    //if mouse right of Blinky
    look=2;               //move Blinky and eyes right
  }
}

void mousePressed() {              //when mouse is left clicked
  if (colorx == color(255,0,0)) {  //if Blinky is red
    colorx = color(255,128,0);     //change to orange
  }
  else if (colorx == color(255,128,0)) {  //if Blinky ir orange
    colorx = color(255,0,0);              //change to red
  }
}
