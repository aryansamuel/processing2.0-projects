void maze(float x, float y, float w, float h, float sz) {
  for (int i = 0; i < w / sz; i++) {
    for (int j = 0; j < h / sz; j++) {
      float xoffset = i * sz;
      float yoffset = j * sz;
      float r = random(1);
      if (r > 0.5) {
        line(x + xoffset, y + yoffset, 
        x + xoffset + sz, y + yoffset + sz);
      } else {
        line(x + xoffset + sz, y + yoffset, 
        x + xoffset, y + yoffset + sz);
      }
    }
  }
}
void setup() {
  size(400, 400);
  noLoop();
}
void draw() {
  noFill();
  stroke(255);
  strokeWeight(2);
  background(0, 0, 255);
  maze(0, 0, 200, 400, 10);
  maze(200, 0, 200, 400, 5);
}

