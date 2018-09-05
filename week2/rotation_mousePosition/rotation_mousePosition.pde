int x, y; 
int size; 
color yellow; 
void setup() {
  yellow = color(random(0,255), random(0,255), random(0,255)); 
  size(500, 500); 

  background(0); 

  x = width/2; 
  y = height/2; 
  size = 30;
}

void draw() {
  //mouseX and mouseY track the location of our mouse on the canvas
  
  background(0); //need to reset our background here, or will constantly draw houses on top of each other 
  println(mouseX); 
  println(mouseY); 

  
  fill(yellow); 
  pushMatrix();
  int r = mouseX-mouseY; 
  translate(x, y); 
  rotate(radians(r)); 
  
  //need to redraw our house at the origin 
  //then when the canvas is translated our house will still be in the correct position
  triangle(size/2, 0, 0, 0 + size/2, 0 + size, 0 + size/2); 
  rect(0, 0 + size/2, size, size); 
  rect(0 + size/3, 0 + size, size/3, size/2); 
  popMatrix();
}