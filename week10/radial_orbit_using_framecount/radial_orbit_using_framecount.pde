float r = 0;
float theta = 0;
PVector position; 

void setup(){
  size (500, 500);
  background(0);
  position = new PVector(0, 0); 
}

void draw(){
  //background(0); 
  position.x = r*cos(frameCount);
  position.y = -r*sin(frameCount);
  
  
  fill(0, 255, 255);
  noStroke();
  ellipse(position.x+width/2, position.y+height/2, 1, 1);
  
  theta += .1;
  r+= .1;
  
}