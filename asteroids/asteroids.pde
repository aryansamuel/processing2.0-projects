/*                        ~~ASTEROIDS~~
 * ~Controls: 
 * - UP arrow to move spaceship up.        
 * - DOWN arrown to move spaceship down.
 * - LEFT arrow to move scapeship left.
 * - RIGHT arrow to move spaceshp right.
 * ~Instructions:
 * - Try to avoid the asteroids!
 * - More asteroids will appear as 'time' increases.
 * - 'Time' keeps increasing as long as you dont get hit 
 *    by asteroids.
 * - If you are hit by an asteroid, the screen will red 
 *    and you will lose one life.
 * - If your lives reach 0, then the game is OVER.
 * - To restart, press the Space Bar.
 * - To change the starting number of lives, change the life variable.
 * - There are no boundaries in space, so don't get lost! Good Luck!
 */

int life = 3;  //Number of starting Lives

int SIZE = 600;
int ballAmount = 1;
float shipX = SIZE/2;
float shipY = SIZE/2;
float shipWidth = 20;
float shipHeight = shipWidth*2;
float ballSize;
int lives=life;
float timeKeep;

float[] ballX = new float[100];
float[] ballY = new float[100];
float[] xSpeed = new float[100];
float[] ySpeed = new float[100];
color[] ballC = new color[100];


void setup() {
  size(SIZE, SIZE);  //resolution
  noLoop();          //call draw once
  for (int i=1; i < 100; i++) { // initialize values for every asteroid
    ballX[i] = random(-15, width+50);
    ballY[i] = random(-90, height-(height+50));
    ballC[i] = color(#AD7A4B);
    xSpeed[i] = random(-4, 4);
    ySpeed[i] = random(2, 4);
  }
  // initialize values for the first asteroid
  ballX[0] = random(-75, -50);
  ballY[0] = random(-15, height);
  ballC[0] = color(#AD7A4B);
  xSpeed[0] = 3;
  ySpeed[0] = -3;
  println("Click the Space Bar to Start!");
}
void draw() {
  background(0);     //background color
  drawBall();        //calls funtion to draw a asteroid
  moveBall();        //calls funtion to move the asteroid
  bounceBall();      //calls funtion to bounce the asteroid
  if (frameCount%250 == 0) { // add one asteroid every 250 frames
    ballAmount = ballAmount+1;
  }
  spaceship();             //calls funtion to create and move a spaceship
  textSize(20);
  text("Lives: " +lives, width-(width-10), 20);  //calls funtion to show score keeper\
  text("Time: " +timeKeep, width-120, 20);  //time keeper
  // STARS
  randomSeed(1000);
  noStroke();
  for (int i =0; i < 1000; i++) {
    fill(random(150, 255), random(150, 255), random(150, 255));
    float s1 = cos(frameCount*0.1 * random(0.3, 0.5)) + 1;
    ellipse(random(600), random(600), s1, s1);
  }  //stars
}

void drawBall() {  //draws an asteroid
  for (int i=0; i<ballAmount; i++) {
    ballSize = random(20, 60);
    noStroke();//no outline
    fill(ballC[i]);//ellipse color
    ellipse(ballX[i], ballY[i], ballSize, ballSize);//ellipse pos and size
  }
}

void moveBall() {        //function to move asteroid
  for (int i=0; i<ballAmount; i++) {
    ballX[i] = ballX[i]+xSpeed[i]; // move asteroid on x axis with xSpeed
    ballY[i] = ballY[i]+ySpeed[i]; //move asteroid on y axis with ySpeed
  }
}


void bounceBall() { // make asteroid bounce off walls
  timeKeep = frameCount/60;  //time counter
  for (int i=0; i<ballAmount; i++) { // for every asteroid
    // if asteroid hits left or right edge
    if (ballX[i]<(width - (width+150))||ballX[i]>(width + 150)) {
      xSpeed[i] = -xSpeed[i]*1.0;
      ySpeed[i] = ySpeed[i]*1.0;
    } 
    //if asteroid hits top or bottom edge
    if (ballY[i]<(height-(height+150)) || ballY[i]>(height+150)) {
      ySpeed[i] = -ySpeed[i]*1.0;
      xSpeed[i] = xSpeed[i]*1.0;
    }
    if (hitsSpaceship(ballX[i], ballY[i])) {
      ballX[i] = random(-45, -15);
      ballY[i] = random(height-(height/2), height);
      lives = lives-1;
      background(255, 0, 0);
      if (lives<1) {
        background(255);
        textSize(50);
        text("YOU'RE DEAD!!!", (width/2)-200, height/2);
        noLoop();
      }
    }
  }
}

void spaceship() {        //create a spaceship
  fill(210);
  ellipse(shipX, shipY, shipWidth, shipHeight); //rocket body
  fill(255, 0, 0);
  triangle(shipX-(shipWidth/2.14), (shipHeight/6)+shipY, shipX-(shipWidth/4.615), (shipHeight/2.4)+shipY, shipX-(shipWidth/1.395), (shipHeight/2.4)+shipY); //left side fin  
  triangle((shipWidth/2.143)+shipX, (shipHeight/6)+shipY, (shipWidth/4.615)+shipX, (shipHeight/2.4)+shipY, (shipWidth/1.395)+shipX, (shipHeight/2.4)+shipY); //right side fin   
  triangle(shipX, shipY-(shipHeight/1.5), shipX-(shipWidth/2.6), shipY-(shipHeight/3), shipX+(shipWidth/2.61), shipY-(shipHeight/3)); //rocket tip
  fill(255);
  ellipse(shipX, shipY, shipWidth-(shipWidth/2), shipHeight-(shipHeight/1.3)); //rocket window (outer)
  fill(#31C6FF);
  ellipse(shipX, shipY, shipWidth-(shipWidth/1.5), shipHeight-(shipHeight/1.2)); //rocket window (inner)
}

void keyPressed() {
  if (keyCode == DOWN) {
    shipY = shipY + 20;
  }
  if (keyCode == UP) {
    shipY = shipY - 20;
  }
  if (keyCode == LEFT) {
    shipX = shipX - 20;
  }
  if (keyCode == RIGHT) {
    shipX = shipX + 20;
  }
  if (keyCode == ' ') {  //Space Bar resets all variables and starts or restarts the game
    lives = life;
    shipX = width/2;
    shipY = height/2;
    ballAmount = 0;
    timeKeep = 0;
    frameCount = 0;
    frameCount++;
    loop();
  }
} //enables spaceship controls

boolean hitsSpaceship(float x, float y) {    //calculate value for asteroid if it hits the ship
  if (((y+(ballSize/1.5))>(shipY-(shipHeight/2))) && ((y-(ballSize/1.5)) < (shipY+(shipHeight/2))) &&  //if asteroid's edge touches the ships edge
  ((x-(ballSize/2))<(shipX+(shipWidth/1.5))) &&  //if asteroid's xPos is less than ship's yPos
  ((x+(ballSize/2))>(shipX-(shipWidth/2)))) {  //if asteroid's xPos is greater than the ship's yPos
    return true;                  //return true value
  } else {             //otherwise
    return false;      //return false value
  }
}

