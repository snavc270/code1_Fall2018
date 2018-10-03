int r; 
int size; 
void setup(){
  size(1000, 600); 
  size = 100; 
}

void draw(){
  background(0); 
  
  //single loop
  //for (int i = 0; i <= 600; i+=100){
  //  r = int(map(i, 0, 600,0, 255)); 
  //  fill(r, 0, 0); 
  //  ellipse(i, 100, 100, 100); 
    
  //  ellipse(i * mouseX/100, i * mouseY/100, 50, 50); 
  //}
  
  //nested loops
   
  for (int i = 0; i <= width; i +=size){
    for (int j = 0; j <= height; j += size){
      r = int(map(i, 0, 600,0, 255)); 
      int b = int(map(j, 0, 600,0, 255));
      fill(r, 0, b); 
      ellipse(i, j, size, size); 
    }
  }
}