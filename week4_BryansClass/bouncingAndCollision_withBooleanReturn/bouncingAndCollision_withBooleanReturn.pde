float x1Pos, y1Pos, x2Pos, y2Pos; 

float x1Speed, y1Speed, x2Speed, y2Speed; 
int size = 50; 

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
  
  checkBoundaries(1); 
  checkBoundaries(2); 
  println(x1Speed); 
}

//can also use functions to simplify our draw loop 
//void means there is no specific return type
//we see this in our void draw, void setup, and a number of other functions

void checkBoundaries(float shapeNumber){
  if (shapeNumber == 1) {
    if (isPointOutOfBounds(x1Pos, y1Pos)) {
      x1Speed *= -1;
      y1Speed *= -1;
    }    
  }
  if (shapeNumber == 2) {
    if (isPointOutOfBounds(x2Pos, y2Pos)) {
      x2Speed *= -1;
      y2Speed *= -1;
    }
  }
}

boolean isPointOutOfBounds(float x, float y) {
  if (x < 0 || x > width || y < 0 || y > height) {
    return true;
  }
  return false;
}


float calculateDistance(float shape1X, float shape1Y, float shape2X, float shape2Y) {
  float dist = dist(shape1X, shape1Y, shape2X, shape2Y); //instead of calculating 
  //the distance between a position and our mouse, we add a parameter for a second position
  
  return dist;
}