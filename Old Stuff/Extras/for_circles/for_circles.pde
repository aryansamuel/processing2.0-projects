void setup() {
  size(200,200);
  background(255);
}

void draw() {
  for(int y = 200; y > 0; y = y -20) {
    stroke(0);
    fill(y);
    ellipse(100,100,y,y);
  }
}
