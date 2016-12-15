void setup(){
  background (255);
  size (200, 200);
}
void draw() {
  for(int y = 0; y <=height; y = y+10) {
    stroke(0);
    line(0,y,width,y);
  }
}
