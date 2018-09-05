//boolean to detect if my mouse is pressed 
//if boolean true, want to draw ellipse where mouseX + mouseY
//change the size of my drawing ellipse when arrows clicked

int size; 
int x, y; 
color circleColor; 
void setup(){
  size(500, 500); 
  size = 10; 
  noStroke(); 
  
  //generates a random circle color 
  circleColor = color(random(0,255), random(0,255), random(0,255)); 
}

void draw(){
  fill(100, 0, 255, 5); 
  rect(0, 0, width, height); 
  x = mouseX; 
  y = mouseY; 
  
  //happens continuously 
  if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
    if(mousePressed){
      //fills based on random color 
      fill(circleColor); 
      ellipse(x, y, size, size); 
    }
  }
}

//only happens one time
//when detects change in your mouse state (either clicked 
//or not clicked) 
//void mousePressed(){
//  ellipse(x, y, size, size); 
//}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      size += 1; 
      //size ++; 
    }
    if(keyCode == DOWN){
      size --; 
    }
  }
  
  //generates a new random fill color ever time r is pressed 
  if(key == 'r'){
    circleColor = color(random(0,255), random(0,255), random(0,255));
  }
}