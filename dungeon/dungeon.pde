/*
 *  The following program draws a dungeon which when clicked upon,
 *  changes its path in a random order.
 *  
 */

boolean passageUp = true;
boolean passageLeft = true;
boolean passageRight = true;
boolean passageDown = true;

void setup() {
  size(540, 540);
  noStroke();
  background(0);
  noLoop();  //stops function from looping
}

void draw() {
  for (int i=0; i<6; i++) {   //for every column (6 columns)
    for (int j=0; j<6; j++) { //for every row in column (6 rows)
      drawTile(i*90, j*90, 90, random(1), random(1), random(1), random(1));
    }
  }
}

void drawTile(float x, float y, float size, float r1, float r2, float r3, float r4) {
//passage / floor  
  fill(0);               //passage color
  rect(x, y, size, size); //passage

//blocks / walls  
  fill(255, 0, 0);        //block color
  rect(x, y, size/3, size/3);             //top left block
  rect(x+(size/3)*2, y, size/3, size/3);  //top right block
  rect(x, y+(size/3)*2, size/3, size/3);  //bottom left block
  rect(x+(size/3)*2, y+(size/3)*2, size/3, size/3); //bottom right block

// block booleans  
  if (passageUp == false) {  
    rect(x+(size/3), y+(size/7.5), size/3, size/5); //draw top block
  }
  if (passageLeft == false) {
    rect(x+(size/7.5), y+(size/3), size/5, size/3); //draw left block
  }
  if (passageRight == false) {
    rect(x+(size/3)*2, y+size/3, size/5, size/3);   //draw right block
  }
  if (passageDown == false) {
    rect(x+(size/3), y+(size/3)*2, size/3, size/5); //draw bottom block
  }
  if ((passageUp == false) && (passageLeft == false) && (passageRight == false) && (passageDown == false)) {
    rect(x+(size/3), y+(size/3), size/3, size/3);
  }

// chances of blocks appearing and boolean translation 
  if (r1 > 0.25) {         //top block 75% chance of appearing
    passageUp = true;
  } else {                 //otherwise 25% chance of not appearing
    passageUp = false;
  }
  if (r2 > 0.25) {        //left block 75% chance of appearing
    passageLeft = true;
  } else {
    passageLeft = false;
  }
  if (r3 > 0.25) {       //right block 75% chance of appearing
    passageRight = true;
  } else {
    passageRight = false;
  }
  if (r4 > 0.25) {       //bottom block 75% chance of appearing
    passageDown = true;
  } else {
    passageDown = false;
  }
}

void mousePressed() {    //if mouse is pressed
  redraw();              //performs the draw() function again
}

