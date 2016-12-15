float w = 200;
int x = 200;
int y = 200;

void setup() {
  size(200,200);
  background(255);
}

void draw() {
  while(y > 0) {
    stroke(0);
    fill(w);
    ellipse(100,100,x,y);
    w = w - 20;
    x = x - 20;
    y = y - 20;
  }
}
