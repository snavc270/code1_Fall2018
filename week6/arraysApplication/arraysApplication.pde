int numBalls = 100; 
int buffer = 10; 

int ballSize; 
int eatRadius= 50; 


int[] ballsX= new int[numBalls]; 
int[] ballsY= new int[numBalls]; 

int[] speedX= new int[numBalls]; 
int[] speedY= new int[numBalls]; 

int[] radii= new int[numBalls]; 

color[] baseColor= new int[numBalls]; 
int[] opacity= new int[numBalls]; 
color[] drawColor= new int[numBalls]; 

void setup() {
  size(500, 500); 
  noStroke(); 
  
  for( int i= 0; i< numBalls; i++) {
    ballsX[i]= int(random(buffer, width- buffer)); 
    ballsY[i]= int(random(buffer, height- buffer)); 
    
    speedX[i] = int(random(-.1,.1)); 
    speedY[i] = int(random(-.1,.1)); 
    
    if(speedX[i] ==0){
      speedX[i]=1;
    }
     if(speedX[i] ==0){
      speedY[i]=1;
    }
    ballSize = int(random(5,10)); 
    radii[i] = ballSize; 
    baseColor[i] = color(0, int(random(100, 255)), 0); 
    opacity[i] =255; 
    drawColor[i]= color(baseColor[i], opacity[i]); 
  }
}

void draw(){
  background(255); 
  for(int i= 0; i< numBalls; i++){
    ballsX[i] = ballsX[i] + speedX[i]; 
    ballsY[i] = ballsY[i] + speedY[i]; 
  }
  
  for (int i= 0; i<numBalls; i++) {
    if(ballsX[i]<0){
      speedX[i] = speedX[i] * -1; 
      ballsX[i]= 0; 
    }
    if(ballsX[i]>width){
      speedX[i] = speedX[i] * -1; 
      ballsX[i]= width; 
    }
     if(ballsY[i]<0){
      speedY[i] = speedY[i] * -1; 
      ballsY[i]= 0; 
    }
    if(ballsY[i]>height){
      speedY[i] = speedY[i] * -1; 
      ballsY[i]= height; 
    }
  }
  for (int i= 0; i<numBalls; i++) {
    if (dist(ballsX[i], ballsY[i], mouseX, mouseY)<eatRadius) {
      opacity[i] = 0 ;
    }
  }
  if (keyPressed) { 
    for(int i = 0; i <numBalls; i++) {
      opacity[i] = 255; 
    }
   }
  
  
  for(int i = 0; i< numBalls; i++) {
    drawColor[i] = color(baseColor[i], opacity[i]);
    fill(drawColor[i]); 
    ellipse(ballsX[i], ballsY[i], radii[i]*2, radii[i]*2); 
  }
}