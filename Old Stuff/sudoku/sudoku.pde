int x_global = 0;    //int x pos of board corner
int y_global = 0;    //int y pos of board corner
int s_global = 34;   //cell size
int cell_x = 0;      //int cell x pos
int cell_y = 0;      //int cell y pos

void setup() {
  size(306, 306);    //resolution
  board(x_global, y_global, s_global, color(255), color(180));  //draws the board
  
}

void cell(int x, int y, int s, color shade) {  //creates a single cell
    fill(shade);      //fill the cell with user defined color
    rect(x, y, s, s); //draws a single rectangle/cell
}

void triple(int x, int y, int s, color shade) { //creates a row of three cells
    for (int i=0; i<3; i++) {     //repeat three times
        cell(x+i*s, y, s, shade); //creates a single cell
    }
}

void block(int x, int y, int s, color shade) {  //
  for (int i=0; i<3; i++) {      //repeat three times
    triple(x, y+i*s, s, shade);  //creates a row of three cells
  }
}

void row(int x, int y, int s, color sides, color middle) {  //creates a row of three blocks with alternating colors
  for (int i=0; i<1; i++) { //perform action once
    block(x, y, s, sides);  //create single block on left side with user defined side colors
  }
  for (int i=1; i<2; i++) {       //perform action once
    block(x+i*3*s, y, s, middle); //create single block in the middle with user defined middle colors
  }
  for (int i=2; i<3; i++) {      //perform action once
    block(x+i*3*s, y, s, sides); //create single block on right side with user defined side colors
  }
}

void cellArray(int x, int y, int s, color light, color dark) {  //create three columns of block rows
  for (int i=0; i<1; i++) {    //perform action once
    row(x, y, s, light, dark); //create a row of three blocks with light sides and dark middle
  }
  for (int i=1; i<2; i++) {          //perform action once
    row(x, y+i*3*s, s, dark, light); //create a row of three block with dark sides and light middle
  }
  for (int i=2; i<3; i++) {          //perform action once
    row(x, y+i*3*s, s, light, dark); //create a row of three block with light sides and dark middle
  }
}

void drawLines(int x, int y, int s) {   //draw board division lines
  for (int i=1; i<3; i++) {             //repeat twice
    strokeWeight(2);                    //line thickness of 2
    line(x+i*s*3, y+i, x+i*s*3, y+s*9); //draw vertical division line
    line(x+i, y+i*s*3, x+s*9, y+i*s*3); //draw horizontal division line
  }
}

void board(int x, int y, int s, color light, color dark) { //draws the whole board
  cellArray(x, y, s, light, dark);  //calls upon cellArray function
  drawLines(x, y, s);               //call upon drawLines function
}

void mousePressed() {                        //mouse press actions
    cell_x = (mouseX - x_global) / s_global; //define a cells x pos
    cell_y = (mouseY - y_global) / s_global; //define a cells y pos
    if (mousePressed == true) {              //while the mouse is pressed
      fill(255, 0, 0);                       //fill red
      ellipse(cell_x*s_global+s_global/2, cell_y*s_global+s_global/2, 5, 5); //draw a red dot in the middle of the clicked cell
    }
}

void draw() {      //draw function to draw red dots
  mousePressed();  //calls upon mousePressed function
}
