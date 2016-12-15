/*
 *  The following programs draw random colored Tribbles.
 *  The number of Tribbles drawn can be set in the first line.
 *
 *  NOTE: Since increasing the number of Tribbles decreases
 *  graphic performance, it may seem that the Tribbles do not
 *  vibrate for the correct duration when they in fact are.
 *  To truly test Time duration, set a small Tribble value.
 *
 */

int TribbleNum = 200;  //Set number of Tribbles

Tribble [] tribbles = new Tribble [TribbleNum];
void setup() {
  size(400, 400);
  frameRate(60);
  for (int i = 0; i < TribbleNum; i++) {
    tribbles[i] = new Tribble(random(400), random(400));
  }
}

void draw() {
  background(166, 200, 245);
  for (int i = 0; i < TribbleNum; i++) {
    tribbles[i].draw();
    tribbles[i].jiggle(random(180, 600));  //random delay value chosen
  }
}

class Tribble { 

  //Data for each Tribble
  float x, y;
  boolean excite;
  color c = color(random(255), random(255), random(255));
  float time = 0;
  float delay = 0;

  //Constructor
  Tribble(float posX, float posY) {
    x = posX;
    y = posY;
  }

  //Draw & Movement Method
  void draw() {
    fill(c);                    //Tribble color
    stroke(0);                  //fuzz color
    strokeWeight(2);
    ellipse(x-10, y-10, 30, 30);   //top left fuzz
    ellipse(x, y-15, 35, 35);      //top fuzz
    ellipse(x+12, y-15, 25, 25);   //top right fizz
    ellipse(x+10, y, 40, 40);      //right fuzz
    ellipse(x-12, y+3, 32, 32);    //left fuzz
    ellipse(x-5, y+13, 30, 30);    //bottom left fuzz
    ellipse(x+7, y+9, 36, 36);     //bottom right fuzz
    noStroke(); 
    ellipse(x, y, 50, 50);      //main body
    fill(255, 0, 0);  //cheeks
    ellipse(x-15, y+10, 10, 10); //left cheek
    ellipse(x+15, y+10, 10, 10); //right cheek
    fill(0);          //eyes
    ellipse(x-12, y-5, 18, 18);
    ellipse(x+12, y-5, 18, 18);
    noFill();         //smile
    stroke(0);
    strokeWeight(1.5);
    arc(x, y+8, 10, 7, QUARTER_PI, PI-QUARTER_PI);  //smile curve
    noStroke();
    fill(255);        //eye shine
    ellipse(x-11, y-8, 8, 8);  //top left shine
    ellipse(x+11, y-8, 8, 8);  //top right shine
    ellipse(x-14, y, 5, 5);    //bottom left shine
    ellipse(x+14, y, 5, 5);    //bottom right shine
  }

  //Vibration Method
  void jiggle(float d) {
    delay++;          //start delay timer
    if (delay > d) {  //after delay timer reaches random value
      if (excite) {      //if excite is true
        x = x + (random(-1, 1)); //increase and decrease x by either -1 or 1 randomly
        time++;                  //increase time by 1
        if (time > 120) {        //after 2 seconds
          time = 0;              //reset time
          excite = false;        //set excite to false
        }
      } else {                   //if excite is false
        time++;                  //increase time by 1
        x = x;                   //stop moving x
        if (time > 300) {        //after 5 seconds
          time = 0;              //reset time to 0
          excite = true;         //set excite to true
        }
      }
    }
  }
}

