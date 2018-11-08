int [] size = new int[4]; 
int s = 0; 

void setup(){
  size(600, 600); 
  for(int i = 0; i<4; i++){
    size[i] = 10+ i*10; 
  }
}

void draw(){
  //how can we change our brush size, based on 
  //what key pressed 
  //if i'm pressing number 1 key, set brush size to 10svoi
  
  if(mousePressed){
    
    ellipse(mouseX, mouseY, size[s], size[s]); 
  }
}


void keyPressed(){
  if(key=='1'){
    s = 0; 
  }else if(key == '2'){
    s = 1; 
  }else if (key == '3'){
    s = 2; 
  }else if (key == '4'){
    s = 3; 
  }
}