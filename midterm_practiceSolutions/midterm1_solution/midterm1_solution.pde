float size; 
float dist; 
int xPos, yPos; 

void setup(){
  size(500, 500); 
  xPos = width/2; 
  yPos = height/2; 
}

void draw(){
  background(0); 
  println(dist); 
  dist = dist(mouseX, mouseY, xPos, yPos); 
  size = map(dist, 0, width/2*sqrt(2), 0, width); 
  ellipse(width/2, height/2, size, size); 
}