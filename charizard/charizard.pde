/*
 *The following program draws a static drawing of Charizard!
 *Sources:
 *        Bulbapedia: http://bulbapedia.bulbagarden.net/wiki/Charizard_%28Pok%C3%A9mon%29
 *
*/

void setup() {
  size(700, 500);
}

void draw() {
//background
rectMode(CENTER);
fill(255,0,0);
rect(width/2,height/4,width,height/2);
fill(255);
rect(width-(width/2),height-(height/4),width,height/2);
strokeWeight(40);
stroke(0);
line(0,height/2,width,height/2);

//tail
noStroke();
fill(234,168,12);
quad(width/2,360,width/2,430,510,360,470,320);
quad(470,320,510,360,550,height/2,520,height/2);

//left wing
noStroke();
fill(9,120,148);
triangle(100,130,130,150,140,80);
triangle(100,130,20,330,110,280);
triangle(100,130,110,280,170,320);
triangle(100,130,170,320,170,90);
triangle(170,320,170,90,250,130);
quad(250,130,170,320,300,270,300,240);

//right wing
triangle(600,130,570,150,560,80);
triangle(600,130,680,330,590,280);
triangle(600,130,590,280,530,320);
triangle(600,130,530,320,530,90);
triangle(530,320,530,90,450,130);
quad(450,130,530,320,400,270,400,240);

//body
noStroke();
fill(234,168,12);
ellipse(width/2, height-(height/3), 210,210);
fill(246,227,124);
ellipseMode(CENTER);
ellipse(width/2, 350, 130, 180);

//neck
fill(234,168,12);
quad(300,130,350,130,390,250,310,250);

//left leg
fill(234,168,12);
quad(235,430,260,390,320,430,290,440);
quad(290,440,235,430,230,460,275,460);

//right leg
quad(465,430,440,390,380,430,410,440);
quad(410,440,465,430,470,460,425,460);

//left foot
fill(255);
stroke(0);
strokeWeight(1);
triangle(225,455,205,470,230,470);
noStroke();
fill(234,168,12);
ellipse(250,460,60,30);

//right foot
fill(255);
stroke(0);
strokeWeight(1);
triangle(475,455,495,470,470,470);
noStroke();
fill(234,168,12);
ellipse(450,460,60,30);

//left arm
fill(234,168,12);
quad(220,260,280,280,260,300,200,280);
quad(220,260,200,280,(mouseX/10)+120,200,((mouseX/10)+20)+120,200);
ellipse((mouseX/10)+130,190,40,40);
fill(255);
triangle((mouseX/10)+110,185,(mouseX/10)+120,175,(mouseX/10)+115,165);
triangle((mouseX/10)+120,175,(mouseX/10)+120,155,(mouseX/10)+130,170);
triangle((mouseX/10)+130,170,(mouseX/10)+135,160,(mouseX/10)+147,180);

//right arm
fill(234,168,12);
quad(480,260,420,280,440,300,500,280);
quad(480,260,500,280,((mouseX/10)+20)+500,200,(mouseX/10)+500,200);
ellipse((mouseX/10)+510,190,40,40);
fill(255);
triangle((mouseX/10)+530,185,(mouseX/10)+520,175,(mouseX/10)+525,165);
triangle((mouseX/10)+520,175,(mouseX/10)+520,155,(mouseX/10)+505,170);
triangle((mouseX/10)+505,170,(mouseX/10)+500,160,(mouseX/10)+492,180);

//head
fill(234,168,12);
ellipse(330,117,70,70);
rectMode(CENTER);
quad(260,130,270,150,310,150,310,130);
quad(280,95,260,110,310,120,310,100);
quad(350,100,390,90,400,100,350,120);
stroke(255);
strokeWeight(3);
fill(255,0,0);
triangle(320,107,328,115,345,103);
stroke(0,0,255);
point(330,110);
noStroke();

}
