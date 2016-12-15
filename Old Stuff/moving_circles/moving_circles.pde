void setup() {
  size(600,600);
}
int y = 0;
void draw() {
  background(0);
  ellipse(width/2, height/2 - y, 100, 100);
  y = y + 5;
}
