//map the radius of the circle to how close your mouse is to the center of the circle
//in other words, your ellipse should get smaller the closer you are to the center

//right now, the size is mapped along the x axis

float size; 

int xPos, yPos; 

void setup(){
  size(500, 500); 
  xPos = width/2; 
  yPos = height/2; 
}

void draw(){
  background(0); 
  
  //hint, in order to figure out the 3rd parameter for your map function, 
  //you will have to use pythagoreans theorem to calculate the maximum distance 
  //your mouse can be from the center of the ellipse 
  size = map(mouseX, 0, width/2, 0, width); 
  ellipse(width/2, height/2, size, size); 
}