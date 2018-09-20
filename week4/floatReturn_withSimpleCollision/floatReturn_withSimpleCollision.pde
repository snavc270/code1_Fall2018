

float x1Pos, y1Pos, x2Pos, y2Pos; 

float x1Speed, y1Speed, x2Speed, y2Speed; 
int size = 100; 

void setup() {
  size(500, 500); 
  x1Pos = width/2; 
  y1Pos = height/2;
  x2Pos = width/4;
  y2Pos = height/4; 
  
  //gets very tedious; we will learn cleaner ways later in the semester! 
  x1Speed = random(1,4); 
  y1Speed = random(1,4); 
  x2Speed = random(1,4); 
  y2Speed = random(1,4); 
  
}

void draw() {
  background(255); 
  
  x1Pos = x1Pos + x1Speed; 
  y1Pos = y1Pos + y1Speed; 
  x2Pos = x2Pos + x2Speed; 
  y2Pos = y2Pos + y2Speed; 

  fill(100, 0, 150); 
  ellipse(x1Pos, y1Pos, size, size); 
  
  fill(0, 100, 150); 
  ellipse(x2Pos, y2Pos, size, size); 

  println(calculateDistance(x1Pos, y1Pos, x2Pos, y2Pos)); 
  
  x1Speed = checkBoundariesX(x1Pos, x1Speed); 
  y1Speed = checkBoundariesX(y1Pos, y1Speed); 
  x2Speed = checkBoundariesX(x2Pos, x2Speed); 
  y2Speed = checkBoundariesX(y2Pos, y2Speed);  
  
  if(calculateDistance(x1Pos, y1Pos, x2Pos, y2Pos)<size){
    x1Speed = -x1Speed; 
    y1Speed = -y1Speed; 
    x2Speed = -x2Speed; 
    y2Speed = -y2Speed; 
  }
}

float checkBoundariesX(float xPos, float speedX){
  if (xPos >= width - size/2 || xPos <= size/2) {
    speedX = -speedX;
  }
  return speedX; 
}

float checkBoundariesY(float yPos, float speedY){
  if (yPos > height - size/2 || yPos < size/2) {
    speedY = -speedY;
  }
  return speedY; 
}


float calculateDistance(float shape1X, float shape1Y, float shape2X, float shape2Y) {
  float dist = dist(shape1X, shape1Y, shape2X, shape2Y); //instead of calculating 
  //the distance between a position and our mouse, we add a parameter for a second position
  
  return dist;
}