
int size = 50; 
int xPos[] = new int[10]; 

color bgColor[] = new color[10]; 

void setup(){
  size(500, 500); 
  
  for(int i = 0; i<10; i++){
    xPos[i] = size/2 + i*(width/10); 
    bgColor[i] = color(random(0,255), random(0, 255), random(0, 255)); 
  }
}

void draw(){
  
  for(int i = 0; i<10; i++){
    float dist = dist(mouseX, mouseY, xPos[i], height/2);
    if(dist<size/2 && mousePressed){
      background(bgColor[i]); 
    }
  }
  for(int i = 0; i<10; i++){
    
    ellipse(xPos[i], height/2, size, size); 
  }
}