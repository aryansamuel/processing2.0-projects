int x = 100;
int y = 100;
void setup() {
  size(210, 200);
  background(0);
  stroke(0);
}

void draw() {
  fill(255,255,0);
  rexa(20, 40);
  rexa(20, 110);
  rexa(20, 180);
  rexa(120, 40);
  rexa(120, 110);
  rexa(120, 180);
  hexa(20, 40);
  hexa(20, 110);
  hexa(90, 40);
  hexa(90, 110);
  hexa(120, 40);
  hexa(120, 110);
  hexa(190, 40);
  hexa(190, 110);
}

void rexa(float xbase, float ybase) {
  triangle(xbase, ybase, xbase+10, ybase-10, xbase+10, ybase+10);
  rect(xbase+10, ybase-10, 50, 20);
  triangle(xbase+70, ybase, xbase+60, ybase-10, xbase+60, ybase+10);
}

void hexa(float xbase, float ybase) {
  triangle(xbase,ybase,xbase-10,ybase+10,xbase+10,ybase+10);
  rect(xbase-10,ybase+10,20,50);
  triangle(xbase,ybase+70,xbase-10,ybase+60,xbase+10,ybase+60);
}

