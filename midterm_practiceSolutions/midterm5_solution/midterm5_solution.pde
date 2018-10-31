
int num = 10; 
int opacity[][] = new int[10][10]; 
void setup(){
  size(600, 600); 
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      opacity[i][j] = 255;  
    }
  }
}

void draw(){
  background(0); 
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      if(mouseX > i*width/num && mouseX<= (i+1)*width/num && 
      mouseY > j*height/num && mouseY <=(j+1)*height/num){
        opacity[i][j] = 0; 
      }
      
      if(opacity[i][j]<255){
        opacity[i][j] ++; 
      }
      fill(255, opacity[i][j]); 
      rect(i*(width/num), j*(height/num), width/num, height/num);
    }
  }
}