//this sketch should have 10 ellipses spaced evenly across the screen 
//each ellipse should change the background color when it's pressed 

//right now the ellipses are all stacked on top of each other and the last ellipse is drawn
int size = 50; 
int xPos[] = new int[10]; 

color bgColor[] = new color[10]; 

void setup(){
  size(500, 500); 
  
  for(int i = 0; i<10; i++){
    xPos[i] = size/2 + i; 
    bgColor[i] = color(random(0,255), random(0, 255), random(0, 255)); 
  }
}

void draw(){
  
  for(int i = 0; i<10; i++){
    float dist = dist(mouseX, mouseY, xPos[i], height/2);
  }
  
  for(int i = 0; i<10; i++){
    background(bgColor[i]); 
    ellipse(xPos[i], height/2, size, size); 
  }
}