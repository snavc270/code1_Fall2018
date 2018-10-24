//this sketch should have 10 ellipses spaced evenly across the screen 
//each ellipse should change the background color when it's pressed 

//right now the ellipses are all stacked on top of each other and the last ellipse is drawn
int size = 10; 
int num; 
int xPos[]; 

color bgColor[]; 

void setup(){
  size(500, 500); 
  num = width/size; 
  xPos = new int[num]; 
  bgColor = new int[num]; 
  
  for(int i = 0; i<num; i++){
    xPos[i] = i * size + size/2; 
    bgColor[i] = color(random(0,255), random(0, 255), random(0, 255)); 
  }
}

void draw(){
  if (mousePressed) {
    for(int i = 0; i<num; i++){
      if (dist(mouseX, mouseY, xPos[i], height/2) < size / 2) {
        background(bgColor[i]);
        break;
      }
    }
  }
  
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], height/2, size, size); 
  }
  
}