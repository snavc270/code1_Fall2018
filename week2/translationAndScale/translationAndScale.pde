int x, y; //we set up variables to position our house 
int size; 

void setup(){
  size(500, 500); 
  
  background(0); 
  
  //declaring our x and y position variable values; 
  x = width/2; //positioned directly in the center of our screen 
  y = height/2; 
  size = 30; 
}

void draw(){
  
  fill(255, 0, 0); 
  //translate(100, 100); //shifts the entire canvas 100 pixels 
  triangle(x+size/2, y, x, y + size/2, x + size, y + size/2); 
  rect(x, y +15, size, size); 
  rect(x + size/3, y + size, size/3, size/2); 
  
  fill(0, 0, 255); 
  pushMatrix(); //stores the coordinates of our new canvas 
  translate(100, 100); //shifts our canvas 100 pixels to the right and 100 pixels down 
  triangle(x+size/2, y, x, y + size/2, x + size, y + size/2); 
  rect(x, y +15, size, size); 
  rect(x + size/3, y + size, size/3, size/2); 
  popMatrix(); //resets the coordinates of our canvas so our translate does not effect
  //the other objects on our canvas
  
  fill(0, 255, 0); 
  pushMatrix(); 
  translate(-200, -100); //shifts our canvas 200 pixels to the left and 100 pixels up
  scale(2.0); //scaled our canvas to twice it's size
  triangle(x+size/2, y, x, y + size/2, x + size, y + size/2); 
  rect(x, y +15, size, size); 
  rect(x + size/3, y + size, size/3, size/2); 
  popMatrix(); 
  //again, only this house is effected by these translations because we reset our coordinate system with the popMatrix()
  
}