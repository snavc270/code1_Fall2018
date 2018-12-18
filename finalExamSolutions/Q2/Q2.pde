float x, y; 
int theta; 
int orbitRadius = 100; 

void setup(){
  size(600, 600);   
}

void draw(){
  background(0, 100, 200); 
  theta ++; 
  
  x = cos(radians(theta))*orbitRadius + mouseX; 
  y = sin(radians(theta))*orbitRadius + mouseY; 
  
  ellipse(x, y, 25, 25);   
}