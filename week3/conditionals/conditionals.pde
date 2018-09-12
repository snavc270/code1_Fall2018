int ellipseX;
int ellipseY;
int ellipseSize;
float distance; 

boolean ellipsePressed = false;

void setup() {
  size(600, 600);

  ellipseX = width/2;
  ellipseY = height/2;
  ellipseSize = 100;
}

void draw() {
  
  
  if (ellipsePressed) {
    background(255);
  } else {
    background(150);
  }
  
  fill(0);
  text("ellipsePressed is " + ellipsePressed, 20, 20);
 
  
  
  if (calcDist(ellipseX, ellipseY)< ellipseSize/2){
      fill(0, 200, 200); 
      println("this happened"); 
  }else{
     fill(255); 
  }
  ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);
}

void mousePressed() {
   distance = dist(mouseX, mouseY, ellipseY, ellipseX);

  if (distance < ellipseSize/2) {
    ellipsePressed = !ellipsePressed;
  }
}

float calcDist(int xPos, int yPos){
  distance = dist(mouseX, mouseY, xPos, yPos);
  return distance; 
}