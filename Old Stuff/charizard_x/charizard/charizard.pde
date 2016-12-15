int a=245;
int b=60;
int c=0;

int p=0;
int o=-300;
int k=-600;
int e=-900;
int m=-1200;
int n=-1500;


void setup(){
  
size(490,500);
background(0);
ellipseMode(CENTER);
rectMode(CENTER);
smooth();
}

void draw(){

  background(0);
//pokeballs

stroke(0);
strokeWeight(1.5);
fill(250, 0, 0);
arc(p, 50, 40,40, PI, 2*PI);
strokeWeight(1.5);
line(-20+p,51, 20+p,51);
fill(250);
arc(p,52, 40,40, 0, PI);

strokeWeight(1.7);
ellipse(p,50, 12,12);
strokeWeight(0.3);
ellipse(p,50, 6,6);
p=p+6;

stroke(0);
strokeWeight(1.5);
fill(250, 0, 0);
arc(o, 130, 40,40, PI, 2*PI);
strokeWeight(1.5);
line(-20+o,131, 20+o,131);
fill(250);
arc(o,132, 40,40, 0, PI);

strokeWeight(1.7);
ellipse(o,130, 12,12);
strokeWeight(0.3);
ellipse(o,130, 6,6);
o=o+6;

stroke(0);
strokeWeight(1.5);
fill(250, 0, 0);
arc(k, 210, 40,40, PI, 2*PI);
strokeWeight(1.5);
line(-20+k,211, 20+k,211);
fill(250);
arc(k,212, 40,40, 0, PI);

strokeWeight(1.7);
ellipse(k,210, 12,12);
strokeWeight(0.3);
ellipse(k,210, 6,6);
k=k+6;

 stroke(0);
strokeWeight(1.5);
fill(250, 0, 0);
arc(e, 290, 40,40, PI, 2*PI);
strokeWeight(1.5);
line(-20+e,291, 20+e,291);
fill(250);
arc(e,292, 40,40, 0, PI);

strokeWeight(1.7);
ellipse(e,290, 12,12);
strokeWeight(0.3);
ellipse(e,290, 6,6);
e=e+6;
  
  stroke(0);
strokeWeight(1.5);
fill(250, 0, 0);
arc(m, 370, 40,40, PI, 2*PI);
strokeWeight(1.5);
line(-20+m,371, 20+m,371);
fill(250);
arc(m,372, 40,40, 0, PI);

strokeWeight(1.7);
ellipse(m,370, 12,12);
strokeWeight(0.3);
ellipse(m,370, 6,6);
m=m+6;
  
  stroke(0);
strokeWeight(1.5);
fill(250, 0, 0);
arc(n, 450, 40,40, PI, 2*PI);
strokeWeight(1.5);
line(-20+n,451, 20+n,451);
fill(250);
arc(n,452, 40,40, 0, PI);

strokeWeight(1.7);
ellipse(n,450, 12,12);
strokeWeight(0.3);
ellipse(n,450, 6,6);
n=n+6;
  
  
noStroke();
fill(a,b,c);

//Charizard's head


ellipse(238,112,85,25);
rect(240,124,70,15, 20,20,20,20);



noStroke();
fill(240);
triangle(206,119,212,125,212,117);

stroke(0);
strokeWeight(1);
noFill();
beginShape();
vertex(203,120);
vertex(212,117);
vertex(221,119);
vertex(233,118);
endShape();

fill(0);
triangle(203,110,198,111,202,108);

fill(a,b,c);
strokeWeight(0.6);
stroke(0);
beginShape();
curveVertex(274, 102);
curveVertex(285, 111);
curveVertex(258, 90);
curveVertex(240, 88);
curveVertex(229, 103);
curveVertex(242, 103);
endShape();

beginShape();
curveVertex(274, 80);
curveVertex(280,113);
curveVertex(300, 89);
curveVertex(295,82);
curveVertex(278, 93);
curveVertex(267, 99);
curveVertex(265, 99);
endShape();


//Charizard's eyes

if(mouseX < 2*width/5) {

fill(220);
beginShape();
vertex(235, 103);
vertex(242, 94);
vertex(253, 92);
vertex(255, 102);
vertex(235, 104);
endShape();

fill(0,0,200);
beginShape();
vertex(234,105);
vertex(240,96);
vertex(244,97);
vertex(245,100);
vertex(244,103);
endShape();

fill(200);
ellipse(240,100,4,4);

}    else if (mouseX < 3*width/5) {
  
noFill();
stroke(0);
strokeWeight(0.7);
beginShape();
vertex(235, 103);
vertex(242, 94);
vertex(253, 92);
vertex(257,97);
endShape();

beginShape();
vertex(239, 105);
vertex(255,103);
endShape();

}    else   {
  
  fill(220);
beginShape();
vertex(235, 103);
vertex(242, 94);
vertex(253, 92);
vertex(255, 102);
vertex(235, 104);
endShape();

fill(0,0,200);
ellipse(245,99,10,9);

fill(200);
ellipse(245,99,4,4);

stroke(0);
strokeWeight(1);
noFill();
beginShape();
vertex(233,118);
vertex(242,114);
endShape();
  
}


//Charizard's wings

//Right wing
noStroke();
fill(a,b,c);

beginShape();
vertex(270,220);
vertex(335,180);
vertex(370,100);
vertex(377,98);
vertex(381,60);
vertex(385,57);
vertex(388,61);
vertex(390,98);
vertex(435,130);
vertex(480,270);
vertex(475,273);
vertex(470,270);
vertex(425,133);
vertex(380,110);
vertex(340,190);
vertex(270,230);
endShape();

noStroke();
fill(0,100,80);
beginShape();
vertex(270,230);
vertex(340,190);
vertex(380,110);
vertex(425,133);
vertex(470,270);
vertex(420,225);
vertex(390,255);
vertex(360,230);
vertex(335,245);
vertex(270,245);
endShape();

stroke(0,20,40);
strokeWeight(0.5);
line(382,117, 419,221);
line(380,124, 361,225); 


//left  wing

fill(a,b,c);
noStroke();
beginShape();
vertex(230,227);
vertex(155,180);
vertex(120,100);
vertex(113,98);
vertex(109,60);
vertex(105,57);
vertex(102,61);
vertex(100,98);
vertex(55,130);
vertex(10,270);
vertex(15,273);
vertex(20,270);
vertex(65,133);
vertex(110,110);
vertex(150,190);
vertex(220,230);
endShape();

noStroke();
fill(0,100,80);
beginShape();
vertex(220,230);
vertex(150,190);
vertex(110,110);
vertex(65,133);
vertex(20,270);
vertex(70,225);
vertex(100,255);
vertex(130,230);
vertex(155,245);
vertex(220,245);
endShape();

stroke(0,20,40);
strokeWeight(0.5);
line(71,222, 107,114);
line(109,121, 129,225); 


//Charizard's neck 

fill(a,b,c);
noStroke();
beginShape();
curveVertex(264, 217);
curveVertex(269, 217);
curveVertex(270, 145);
curveVertex(275, 111);
curveVertex(225, 126);
curveVertex(240, 144);
curveVertex(242, 184);
curveVertex(235, 214);
curveVertex(241, 234);
endShape();
/*Based on code from Processing.org: 
       processing.org/reference/curveVertex_.html
*/
 

//Charizard's tail

noStroke();
fill(225,70,0);

ellipse(180,370, 160,60);
ellipse(163,360, 130,65);
ellipse(293,380, 68,40);


beginShape();
curveVertex(290, 410);
curveVertex(310, 405);
curveVertex(330, 390);
curveVertex(340, 387);
curveVertex(375, 375);
curveVertex(410, 350);
curveVertex(425, 325);
curveVertex(425, 315);
curveVertex(425, 315);
curveVertex(420, 325);
curveVertex(408, 338);
curveVertex(395, 348);
curveVertex(370, 365);
curveVertex(350, 372);
curveVertex(320, 380);
curveVertex(300, 405);
endShape();

fill(245,35,0);
ellipse(167,348, 140,60);

beginShape();
curveVertex(291, 402);
curveVertex(311, 395);
curveVertex(331, 382);
curveVertex(341, 379);
curveVertex(376, 367);
curveVertex(410, 342);
curveVertex(426, 317);
curveVertex(426, 305);
curveVertex(426, 305);
curveVertex(421, 312);
curveVertex(405, 330);
curveVertex(393, 337);
curveVertex(371, 347);
curveVertex(351, 355);
curveVertex(321, 360);
curveVertex(305, 355);
curveVertex(295, 340);
endShape();

  
noFill();
strokeWeight(0.7);
stroke(0);
beginShape();
vertex(200,348);
vertex(170,347);
vertex(168,345);
vertex(150,341);
vertex(149,339);
vertex(151,337);
vertex(155,338);
vertex(157,339);
endShape();

  
//Tail flame
  
noStroke();
fill(250,0,5);
bezier(422,255,  365,356,  501,326,  417,252);
fill(250,80,0);
bezier(422,269,  375,340,  490,330,  417,264);
fill(240,120,0);
bezier(422,280,  392,331,  470,321,  417,275);
  
/*Based on code from user benny_29 on:
      http://forum.processing.org/two/discussion/317/how-to-make-the-flame-move-like-a-candle
*/
  
// Charizard's body

fill(a,b,c);
ellipse(250, 300,128,175); 

fill(245,95,0);
ellipse(250,317,90,145);

//Charizard's arms
stroke(a,b,c);
fill(a,b,c);

pushMatrix();
rotate(0.35);
ellipse(385, 130, 85, 23);
popMatrix();

rect(205,238,20,20,50,0,0,0);

pushMatrix();
rotate(-0.5);
ellipse(35,315, 85, 23);
popMatrix();

rect(293,238,20,20,0,50,0,0);

pushMatrix();
rotate(0.8);
ellipse(455,-67,50,22);
popMatrix();

rect(147,276,15,15,11,0,0,0);

pushMatrix();
rotate(0.65);
ellipse(290,150,22,50);
popMatrix();

rect(356,263,15,15,0,11,0,0);


//Charizard's hands

ellipse(127,312,21,21);

ellipse(127,328,10,20);

pushMatrix();
rotate(0.4);
ellipse(253,236,20,10);
popMatrix();

pushMatrix();
rotate(-0.6);
ellipse(-85,325,20,10);
popMatrix();

fill(210);
stroke(210);
triangle(152,325,149,320,144,321);
triangle(130,335,125,335,128,342);
triangle(104,321,107,323,100,328);

noStroke();
fill(a,b,c);
ellipse(378,298,21,21);

pushMatrix();
rotate(-0.6);
ellipse(126,452,19,10);
popMatrix();

pushMatrix();
rotate(0.4);
ellipse(481,124,19,10);
popMatrix();

ellipse(377,314,10,20);

fill(210);
stroke(210);
triangle(404,308,401,303,397,305);
triangle(378,321,374,321,376,328);
triangle(350,307,353,309,346,312);

//Charizard's legs

noStroke();
fill(a,b,c);

pushMatrix();
rotate(0.5);
ellipse(360,245,45,85);
popMatrix();

rect(180,425,40,21,90,90,90,90);

stroke(210);
fill(210);
triangle(162,419,152,425,160,424);
triangle(164,427,167,432,157,434);
triangle(175,430,178,435,170,439);

noStroke();
fill(a,b,c);
pushMatrix();
rotate(-0.9);
ellipse(-108,469,40,65);
popMatrix();

ellipse(314,400,31,48);
rect(322,420,40,18,90,110,90,120);

stroke(210);
fill(210);
triangle(338,413,347,417,340,418);
triangle(336,419,338,424,345,423);
triangle(332,424,334,429,341,428);


}




























