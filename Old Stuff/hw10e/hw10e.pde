void setup() {
  size(400,400);  //resolution
  background(0);  //background color black
}

void draw() {     //draw eyes with variable size and xy pos
  drawEyes(130,200,100, computeAngle(width/4 ,height/4,mouseX/2,mouseY/2));   //middle pair eyes
  drawEyes(40,70,60,computeAngle(width/10,height/10,mouseX/2,mouseY/2));      //top left pair eyes
  drawEyes(280,70,60,computeAngle(width/3,height/10,mouseX/2,mouseY/2));      //top right pair eyes
  drawEyes(40,330,60,computeAngle(width/10,height/2.5,mouseX/2,mouseY/2));    //bot left pair eyes
  drawEyes(280,330,60,computeAngle(width/2.5,height/2.5,mouseX/2,mouseY/2));  //bot right pair eyes
}

void drawEyes(float x, float y, float r, float computeAngle) {  //function for drawing pair of eyes
  noStroke();                     //left eyeball
  fill(255,0,0);                  //sclera color
  ellipse(x, y, r, r);            //sclera
  fill(0);                        //pupil color
  float r2 = r * 0.5;
  float x2 = x + cos(computeAngle) * r2 * 0.4;  //angle of pupils
  float y2 = y - sin(computeAngle) * r2 * 0.4;  //angle of pupils
  ellipse(x2, y2, r2, r2);        //pupil
  fill(255);                      //pupilshine color
  ellipse(x2 + 7, y2 - 5, 6, 6);  //pupilshine
  noStroke();                           //right eyeball
  fill(255,0,0);
  ellipse(x+r2*2.5, y, r, r);           //sclera
  fill(0);
  float r3 = r * 0.5;
  float x3 = x + cos(computeAngle) * r2 * 0.4;
  float y3 = y - sin(computeAngle) * r2 * 0.4;
  ellipse(x3+r2*2.5, y3, r3, r3);       //pupil
  fill(255);
  ellipse(x3+r2*2.5 + 7, y3 - 5, 6, 6); //pupilshine
}

float computeAngle(float x1, float y1, float x2, float y2) {  //angle of pupil calculation
  return atan2(-(y2 - y1), x2 - x1);
}
