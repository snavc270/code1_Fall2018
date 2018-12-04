void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  
  pushMatrix(); 
  translate(mouseX, mouseY); 
  rotate(radians(mouseX)); 
  
  rect(0, 0, 100, 50); 
  popMatrix(); 
}