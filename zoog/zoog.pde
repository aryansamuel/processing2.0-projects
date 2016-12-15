/*  Base on code from:
 *    Daniel Shiffman, "Learning Processing", 2008, pp. 27.
*/
 
size(200, 200);
smooth();
background(255);

rectMode(CENTER);
ellipseMode(CENTER);

//body
fill(180);
rect(100,100,20,60);

//head
fill(255);
ellipse(100,60,60,60);

//eyes
fill(0);
ellipse(83,60,15,35);
ellipse(118,60,15,35);

//legs
line(90,130,80,140);
line(110,130,120,140);


