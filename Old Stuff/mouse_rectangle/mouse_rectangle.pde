void setup(){
  size(600,600);
}
void draw(){
  background(255);
  fill(255 - abs(mouseX - pmouseX));
  rect(mouseX, mouseY, mouseX, mouseY);
}
