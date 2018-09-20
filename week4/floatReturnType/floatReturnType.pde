//function return type float 

float xPos, yPos; 
int size = 50; 

void setup() {
  size(500, 500); 
  xPos = width/2; 
  yPos = height/2;
}

void draw() {
  //incorporating our functions with logic 
  //change our background if our distance function returns a value less than the 
  //radius of our circle 

  if (calculateDistance(xPos, yPos) < size) {
    background(255, 255, 0);
  }else{
    background(0, 0, 255); 
  }
  ellipse(xPos, yPos, size, size); 

  println(calculateDistance(xPos, yPos)); 
}

//here we have a function that will be able to calculate the distance between your mouse
//and a shape
//the function is of the type float, so it must return a float value
//we have have two parameters, the X & Y position of your shape 
//remember your parameters are going to be the variables that you want to alter 
//every time you call the function 
float calculateDistance(float shapeX, float shapeY) {
  float dist = dist(mouseX, mouseY, shapeX, shapeY); 
  return dist;
}