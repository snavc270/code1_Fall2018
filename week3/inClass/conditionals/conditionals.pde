int circleSize; 
int xPos, yPos; 
color circleColor, bgColor;

boolean isCircleOn; 

int distance; 

void setup(){
  size(500, 500); 
  bgColor = color(30, 200, 200); 
  background(bgColor); 
  
  xPos = width/2; 
  yPos = height/2; 
  
  circleSize = 100; 
}

void draw(){
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  background(bgColor); 
  
  if(distance<circleSize/2){
    circleColor = color(255, 0, 150); 
  }else{
    circleColor = color(255, 255, 255); 
  }
  
  if(isCircleOn == true){ //if(isCircleOn)
    bgColor = color(0, 0, 255); 
  }else{
    bgColor = color(255, 0, 0); 
  }

  println(isCircleOn); 
  fill(circleColor); 
  ellipse(xPos, yPos, circleSize, circleSize); 
}

void mousePressed(){
  if(distance<circleSize/2){
    isCircleOn = !isCircleOn; 
    println(isCircleOn);
    //set x coordinate = random position 
    //set y coordinate = random position 
  }
  //if(distance<circleSize/2){
  //  bgColor = 255; 
  //}else{
  //  bgColor = 150; 
  //}
}