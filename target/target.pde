/*
 *  The following program creates a small galaxy. The user can
 *  use the mouse to place a target onto the screen, which the
 *  planet can follow if the spacebar is pressed.
 *
 *  Sources: Stars from class example
 *
*/

//target pos
int tx = 0;
int ty = 0;
//planet pos & size
float px = random(50,450);
float py = random(50,450);
float ps = random(50, 200);
//booleans
boolean target = false;
boolean follow = false;

void setup() {
  size(500,500);
}

//target movment
void mousePressed() {
  tx = mouseX;
  ty = mouseY;
  target = true;
}

void draw() {
  background(0);
  
//stars
  randomSeed(1000);
  noStroke();
  for (int i =0; i<1000; i++) {
    fill(random(150,255),random(150,255),random(150,255));
    float s1 = cos(frameCount*0.1 * random(0.3,0.5)) + 1;
    ellipse(random(500),random(500),s1,s1);
  }

//target
  noFill();
  stroke(255,0,0);
  strokeWeight(1);
  if (target) {
    ellipse(tx, ty, 14, 14);
    ellipse(tx, ty, 10, 10);
    ellipse(tx, ty, 6, 6);
  }

//planet
  noStroke();
  fill(0,255,0);
  ellipse(px, py, ps, ps);
  if (target) {
    if (follow) {
      if (tx > px) {
        px = px + 1;
      }
      if (tx < px) {
        px = px - 1;
      }
      if (ty > py) {
        py = py + 1;
      }
      if (ty < py) {
        py = py - 1;
      }
    }
  }
}

//planet movement
void keyPressed() {
  if (keyCode == ' ') {
    if (follow == true) {
      follow = false;
    }
    else {
      follow = true;
    }
  }
}
