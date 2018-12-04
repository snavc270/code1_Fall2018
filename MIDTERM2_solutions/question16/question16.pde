float[] xPos;
int size = 60; 

void setup() {
  size(600, 600); 
  
  int numEllipses = width/size;
  xPos = new float[numEllipses]; 
  
  for(int i = 0; i< xPos.length; i++){
    xPos[i] = size/2 + i*width/10; 
  }
}

void draw() {
  background(240);
  for (int i = 0; i < xPos.length; i++) {
    ellipse(xPos[i], xPos[i], 60, 60);
  }
}