int y = 0;

void setup() {
  size(200,200);
  background(255);
}

void draw() {
  while(y < height) {
    stroke(0);
    line(0,y,width,y);
    y = y + 10;
  }
}
