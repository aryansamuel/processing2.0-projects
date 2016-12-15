/*
 *  The following program draw a geometric pattern, with the
 *  middle being slightly different from the rest.
 *
*/

void setup () {
  size (400,400);
}

void draw() {
  background(180);
  for(int i = 0; i < 10; i++) {    //for every row (10 rows)
    for(int j = 0; j < 10; j++) {  //for every column in the row (10 columns)
      if ((j < 2) || (j > 7) || (i < 2) || (i > 7)) { //for every part NOT in the middle section
        pattern(i*40, j*40, 255, 0);  //draw patten with white square and black triangles
        stroke(255,0,0);              
        line(i*40, j, i*40, height);  //draw one border
        line(i, j*40, width, j*40);   //draw second border
      }
      else {                          //for every part IN the middle section
        pattern(i*40, j*40, 0, 255);  //draw pattern with black square and white triangles
      }
    }
  }
}

void pattern (int x, int y, int cr, int ct) {
  noStroke();
  fill(cr);        //square color
  rect(x,y,40,40); //square
  fill(ct);        //triangle color
  triangle(x,y,x+40,y,x+20,y+20);        //top tri relative to square's pos
  triangle(x,y+40,x+20,y+20,x+40,y+40);  //bottom tri relative to square's pos
}

  
  
