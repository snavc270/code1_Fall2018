int x, y; 
int size; 

int xSpeed, ySpeed; 

void setup(){
  size(500, 500); 
  x = width/2; 
  y = height/2; 
  
  xSpeed = int(random(-5, 5)); 
  ySpeed = int(random(-5, 5)); 
  
 
  size = 100; 
}

void draw(){
  background(0, 0, 255); 
  ellipse(x, y, size, size); 
  
  println("x: " + xSpeed + " y: " + ySpeed); 
  x = x+xSpeed; 
  y = y+ySpeed; 
  
  if(xSpeed==0 || ySpeed==0 || xSpeed==ySpeed){
    xSpeed = int(random(-5, 5)); 
    ySpeed = int(random(-5, 5)); 
  }
  
  if(x<=size/2 || x>=width-size/2 ){
    xSpeed = int(random(-5, 5)); 
    xSpeed = -xSpeed; 
  } 
  
  if(y<=size/2 || y>=height-size/2){
    ySpeed = -ySpeed; 
    xSpeed = int(random(-5, 5)); 
  }  
}