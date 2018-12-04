int xPos, yPos, size; 
void setup() {
  size(600, 600);
  xPos = width/2; 
  yPos = height/2; 
  size = 200; 
}

void draw() {
  background(150);
  if (mousePressed && dist(xPos, yPos, mouseX, mouseY)<size/2) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(xPos, yPos, size, size);
}