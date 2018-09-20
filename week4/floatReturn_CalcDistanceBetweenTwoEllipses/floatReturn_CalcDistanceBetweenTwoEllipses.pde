//function return type float 

float x1Pos, y1Pos; 
float x2Pos, y2Pos; 
int size = 50; 

void setup() {
  size(500, 500); 
  x1Pos = width/2; 
  y1Pos = height/2;
  x2Pos = width/4;
  y2Pos = height/4; 
}

void draw() {
  background(255); 

  fill(100, 0, 150); 
  ellipse(x1Pos, y1Pos, size, size); 
  
  fill(0, 100, 150); 
  ellipse(x2Pos, y2Pos, size, size); 

  println(calculateDistance(x1Pos, y1Pos, x2Pos, y2Pos)); 
}


float calculateDistance(float shape1X, float shape1Y, float shape2X, float shape2Y) {
  float dist = dist(shape1X, shape1Y, shape2X, shape2Y); //instead of calculating 
  //the distance between a position and our mouse, we add a parameter for a second position
  
  return dist;
}