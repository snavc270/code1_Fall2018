

float x, y; 
float size = 50; 
float xSpeed, ySpeed; 

void setup(){
  size(600, 600); 
  
  x = width/2; 
  y = height/2; 
  
  xSpeed = random(-5, 5); 
  ySpeed = random(-5, 5); 
}

void draw(){
  background(0); 
  
  x = x + xSpeed; 
  y = y + ySpeed; 
  
  if(x > width){
    x = 0; 
  }
  
  if(x< 0){
    x = width; 
  }
  
  if(y > height){
    y = 0; 
  }
  
  if(y < 0){
    y = height; 
  }
  
  fill(255); 
  ellipse(x, y, size, size); 
  
  if(frameCount % 240 == 0){
    xSpeed = random(-5, 5); 
    ySpeed = random(-5, 5); 
  }
}