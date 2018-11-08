PVector position; 
float theta = 0; 
int orbitSize = 50; 
int yIncrement = 5; 
void setup() {
  
  size(600, 600);
  position = new PVector(0, 0); 
}

void draw() {
  theta +=.1;
  //background(0); 
  //theta = frameCount; 
  
  //move top to bottom in a wave 
  //write a conditional to reset your ellipse
  //when it goes off the screen 
  
  //orbit movement
  position.x = width/2 + cos(theta)*orbitSize; 
  //position.y = height/2 + sin(theta)*orbitSize; 
  
  //wave movement 
  position.y += yIncrement; 
  if(position.y >= height-25){
    yIncrement = -5; 
  }
  if(position.y <= 25){
    yIncrement = 5; 
  }
  ellipse(position.x, position.y, 50, 50);
}