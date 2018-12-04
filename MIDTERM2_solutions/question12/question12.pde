
void setup(){
  size(600, 600); 
}

void draw(){
  background(0); 
  
  int size = 10; 
  for(int i = 0; i< width; i+=60){
    ellipse(i+10, height/2, size, size); 
    size +=10; 
  }
}