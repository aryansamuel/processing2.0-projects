/*
 * Author: Ben Pao, tpao@ucsc.edu
 *         Aryan Samuel, arsamuel@ucsc.edu
 *
 * This program makes growing and shirnking ellipses and
 * fills them with random colors while constantly changing them,
 * giving the animation a psychedelic feel.
 */
int x = 0;
int y = 0;
int z = color(230, 148, 200);

void setup() {
  size(200,200);
  background(255);  //white background
  fill(z); //fill with z color
}

void draw() {
  strokeWeight(300); 
  stroke(random(255),random(255),random(255)); //circle outline color
  ellipse(100,100,x,y);
    fill(random(255),random(255),random(255)); //fills circle with random colors
    y = y + 3;    //increase circles vertical size
    x = x + 3;    //increases circles horizontal size
  if (y > 350) {  //when circle becomes to large
    y = 0;  //bring y back to 0
    x = 0;  //bring x back to 0
    
  }
}

