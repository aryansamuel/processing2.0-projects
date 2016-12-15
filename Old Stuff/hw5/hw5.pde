int x=0;
void setup() {
  size(720, 480);
  smooth();
  strokeWeight(2);
  ellipseMode(RADIUS);
}

void draw() {
  background(64);
  //Neck
  stroke(255);                  // Set stroke to white
  line(266+x, 257, 266+x, 162); // Left
  line(276+x, 257, 276+x, 162); // Middle
  line(286+x, 257, 286+x, 162); // Right

  // Antennae
  stroke(255);
  line(276+x, 155, 246+x, 112); // Small
  line(276+x, 155, 306+x, 56);  // Tall
  line(276+x, 155, 342+x, 170); // Medium

  // Body
  noStroke();                 // Disable stroke  
  fill(255);                  // Set to white
  ellipse(264+x, 377, 33, 33);// Antigravity Orb 
  fill(0);                    // Set to black
  rect(219+x, 257, 90, 120);  // Main body
  fill(255);                  // Set back to white
  rect(219+x, 274, 90, 6);    // Gray stripe

  // Head
  fill(0);                    // Set to black
  ellipse(276+x, 155, 45, 45);// Head
  fill(255);                  // Set to white
  ellipse(288+x, 150, 14, 14);// Large eye
  fill(200,0,0);              // Set to red
  ellipse(288+x, 150, 8, 8);  // Large Pupil
  fill(200,0,0);              // Set to red
  ellipse(263+x, 148, 5, 5);  // Small eye 1
  ellipse(296+x, 130, 4, 4);  // Small eye 2
  ellipse(305+x, 162, 3, 3);  // Small eye 3
  x = x+1;
}

