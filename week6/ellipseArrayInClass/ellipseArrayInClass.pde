int numE = 100; 

int eSize[]= new int[numE]; 

int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE]; 

int[] ePosX = new int [numE]; 
int[] ePosY = new int [numE]; 


color[] baseColor = new int[numE]; 

void setup(){
  size(1000, 1000); 
  
  for(int i = 0; i<numE; i++){
    ePosX[i] = int(random(0, width)); 
    ePosY[i] = int(random(0, height)); 
    
    eSpeedX[i] = int(random(-5,5));
    eSpeedY[i] = int(random(-5,5));
    
    eSize[i] = int(random(10,100));
    
    baseColor[i] = color(int(random(0,50)), int(random(150, 255)),  int(random(150, 255))); 
    if(eSpeedX[i] == 0){
      eSpeedX[i] = 1; 
    }
    if(eSpeedY[i] == 0){
      eSpeedY[i] = 1; 
    }
  }
}

void draw(){
  background(255); 
  
  //set speed of ellipses 
  for(int i =0; i<numE; i++){
    ePosX[i] = ePosX[i] + eSpeedX[i]; 
    ePosY[i] = ePosY[i] + eSpeedY[i]; 
  }
  
  //setup boundaries for ellipses
  for(int i =0; i<numE; i++){
    if(ePosX[i] <= 0 || ePosX[i]>= width){
      eSpeedX[i] = eSpeedX[i]*-1; 
    }
    if(ePosY[i] <= 0 || ePosY[i]>= height){
      eSpeedY[i] = eSpeedY[i]*-1; 
    }
  }
  
  //draw ellipse later 
  for(int i =0; i<numE; i++){
    fill(baseColor[i]); 
    ellipse(ePosX[i], ePosY[i], eSize[i], eSize[i]); 
  }
}

void mousePressed(){
  //measuring the distance between each individual ellipse
  for(int i = 0; i<numE; i++){
    if(dist(ePosX[i], ePosY[i], mouseX, mouseY)<eSize[i]/2){
      baseColor[i] = color(int(random(150,255)), int(random(0, 50)),  int(random(150, 255))); 
    }
  }
}