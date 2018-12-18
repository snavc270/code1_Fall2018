int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta;

int waveOffset; 
void setup(){
  size(500, 500); 
  
  int spacing = width/num; 
  
  waveOffset = height/2; 
  
  for(int i = 0; i<num; i++){
    xPos[i] = spacing*i + size/2; 
  }
}

void draw(){
  background(100); 
  
 
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], waveOffset +sin(theta + i*.2)*waveOffset, size, size ); 
  }
  
  theta += .01; 
}