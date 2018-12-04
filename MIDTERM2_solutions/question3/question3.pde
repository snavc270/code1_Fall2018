color bgColors [] = new color[4]; 

float r; 
void setup(){
  size(600, 600); 
  
  for(int i = 0; i<4; i++){
    bgColors[i] = color(random(0,255), random(0,255), random(0,255)); 
  }
}

int n; 
void draw(){

  if(int(r)== 0){
    n = 0; 
  }else if (int(r) == 1){
    n = 1; 
  }else if (int(r) == 2){
    n = 2; 
  }else if (int(r) == 3){
    n = 3; 
  }
  
  background(bgColors[n]); 
  text("back ground # : " + n, 100, 100); 
}

void mousePressed(){
  r = random(0,4); 
  ellipse(mouseX, mouseY, 50, 50); 
}