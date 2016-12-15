/*
 *  The following program draws two miniature doll versions of
 *  Baymax from Big Hero 6. 
 *  NOTE: Each Monster takes in THREE arguments in the following
 *  order exactle ==>  (xPos, yPos, size), size being the monster's
 *  size.
 *  Sources: Big Hero 6, Marvel
 *
*/

Monster monster_1, monster_2;    //number of monsters

void setup() {
  size(400, 400);
  monster_1 = new Monster(100, 100, 150);   //(xPos, yPos, size)
  monster_2 = new Monster(280, 200, 200);
}

void draw() {
  background(255,0,50);
  monster_1.draw();
  monster_1.poke();
  monster_2.draw();
  monster_2.poke();
}

void mousePressed() {
  monster_1.isAngry = true;
}

void keyPressed() {
  monster_2.isAngry = true;
}

//Monster Class
class Monster {
 //data for each monster
  int x, y, size, z;
  boolean isAngry = false;
  int timeAngry = 0;
  
//constructor
  Monster(int posX, int posY, int mSize) {
    x = posX;
    y = posY;
    size = mSize;
  }

//draw and movement methods
  void draw() {
//head & body    
    stroke(0);       //outline color
    strokeWeight(2); //outline thickness
    fill(255);       //body color
    ellipse(x, y+(size/2), size/1.8, size/1.8);          //body
    ellipse(x-(size/3.7), y+(size/2.1), size/5, size/5); //left hand
    ellipse(x+(size/3.7), y+(size/2.1), size/5, size/5); //right hand
    ellipse(x-(size/5.5), y+(size/1.4), size/4, size/5); //left leg
    ellipse(x+(size/5.5), y+(size/1.4), size/4, size/5); //right leg
    ellipse(x, y, size, size-(size/6));  //head
    stroke(0);  //eye line color
    strokeWeight(size/50);  //eye line thickness changes with size
    line(x-(size/5), y, x+(size/5), y);  //eye line
    noStroke();
  }
  void poke() {
    if (isAngry) {  //Angry Eyes
      timeAngry ++;
      fill(0);  //main eye color
      arc(x-(size/3.7), y, size/6, size/6, 0, PI*2-(timeAngry/25.3), CHORD); //left eye, decreases as timeAngry increases
      arc(x+(size/3.7), y, size/6, size/6, PI+(timeAngry/25.3), PI*3, CHORD);//right eye
      fill(255, 0, 0);  //angry pupil color
      if (timeAngry<20) {  //while timeAngry is less than 20
        arc(x-(size/3.7), y, size/10, size/10, 0, (timeAngry/5.3), CHORD);    //left red eye, increases as timeAngry increases
        arc(x+(size/3.7), y, size/10, size/10, PI-(timeAngry/5.3), PI, CHORD);//right red eye
      } else {            //once timeAngry is more than 20
        arc(x-(size/3.7), y, size/10, size/10, 0, PI+QUARTER_PI, CHORD);  //draw complete left red eye without animating
        arc(x+(size/3.7), y, size/10, size/10, -QUARTER_PI, PI, CHORD);   //draw complete right red eye without animating
      }
      if (timeAngry >= 60) {  //if timeAngry exceeds 60
        isAngry = false; //isAngry reverts to false
      }
    } else {         //Normal Eyes
      timeAngry = 0;  //timeAngry reverts to 0
      fill(0);  //eye color
      ellipse(x-(size/3.7), y, size/6, size/6); //left eye
      ellipse(x+(size/3.7), y, size/6, size/6); //right eye
    }
  }
}

