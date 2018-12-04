void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  translate(mouseX, mouseY);
  noStroke();
  rect(0, 0, 100, 100);
}