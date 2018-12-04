void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(220);
  myDrawing(mouseX, mouseY);
}

void myDrawing(float x, float y) {
  noStroke();
  fill(112);
  ellipse(x, y, 200, 200);
  fill(138);
  rect(x, y, 140, 140);
  fill(160);
  ellipse(x, y, 140, 140);
  fill(178);
  rect(x, y, 95, 95);
  fill(200);
  ellipse(x, y, 95, 95);
}