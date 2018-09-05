int x, y; 
int size; 

void setup() {
  size(500, 500); 

  background(0); 

  x = width/2; 
  y = height/2; 
  size = 30;
}

void draw() {
  //lets say we want to rotate our house 
  fill(255, 0, 0); 
  pushMatrix(); 
  rotate(radians(30)); //rotate's default parameter is radians, but if it's easier to think in terms of degrees,
  //you can use the radians method to convert to degrees 
  triangle(x+size/2, y, x, y + size/2, x + size, y + size/2); 
  rect(x, y +15, size, size); 
  rect(x + size/3, y + size, size/3, size/2); 
  popMatrix(); 
  //this rotates our entire canvas 

  //we need to rotate and translate in order to maintain our house's position
  fill(0, 0, 255); 
  pushMatrix();
  int r = 180; 
  translate(x+size, y+size/2); 
  rotate(radians(r)); 
  
  //need to redraw our house at the origin 
  //then when the canvas is translated our house will still be in the correct position
  triangle(size/2, 0, 0, 0 + size/2, 0 + size, 0 + size/2); 
  rect(0, 0 + size/2, size, size); 
  rect(0 + size/3, 0 + size, size/3, size/2); 
  popMatrix();
}