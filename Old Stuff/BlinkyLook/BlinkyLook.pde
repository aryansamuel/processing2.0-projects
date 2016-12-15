/*
 *  Homework 6: Blinky
 *  CMPS10 - Winter 2015
 *  Author:
 *
 *  This program draws a static image of 
 *  the red ghost, Blinky, from the ancient game of Pac-Man.
 */

int look = 2;   //look = 0 is left
                //look = 1 is center
                //look = 2 is right
                
size(200, 200); //create the screen
noStroke();     //no outlines
smooth();       //make smooth geometry lines

//BODY
fill(255, 0, 0);         //fill red for the body
rect(50, 70, 10, 90);    //Bar 1
rect(60, 40, 10, 130);   //Bar 2
rect(70, 30, 10, 140);   //Bar 3
rect(80, 20, 10, 140);   //Bar 4
rect(90, 20, 10, 130);   //Bar 5
rect(100, 10, 10, 150);  //Bar 6
rect(110, 10, 10, 160);  //Bar 7
rect(120, 10, 10, 160);  //Bar 8
rect(130, 10, 10, 150);  //Bar 9
rect(140, 20, 10, 130);  //Bar 10
rect(150, 20, 10, 140);  //Bar 11
rect(160, 30, 10, 140);  //Bar 12
rect(170, 40, 10, 130);  //Bar 13
rect(180, 70, 10, 90);   //Bar 14

//EYES
fill(255);                       //fill white for sclera
rect(60 + look*10, 50, 40, 30);  //horizontal rect for left eye
rect(70 + look*10, 40, 20, 50);  //vertical rect for left eye
rect(120 + look*10, 50, 40, 30); //horizontal rect for right eye
rect(130 + look*10, 40, 20, 50); //vertical rect for right eye

//PUPILS
fill(0,0,255);                   //fill blue for pupil
rect(60 + look*20, 60, 20, 20);  //square rect for left pupil
rect(120 + look*20, 60, 20, 20); //square rect for right pupil
