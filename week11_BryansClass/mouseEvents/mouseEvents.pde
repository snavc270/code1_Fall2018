//mouse input 
int c; 
void setup(){
  background(255); 
  size(600, 600); 
}

void draw(){
  fill(c); 
  //boolean to check if our mouse is pressed 
  //updates every frame 
  if(mousePressed){
    ellipse(mouseX, mouseY, 50, 50); 
  }
  

}

//function that one detects a state change between
//not clicked and clicked
//only executes code within this function one time
//void mousePressed(){
//  ellipse(mouseX, mouseY, 50, 50); 
//}

//check between clicked and not clicked 
//similar to void mousePressed() only executes 
//code one time 
void mouseReleased(){
  if(c == 0){
    c = 255; 
  }else{
    c = 0; 
  }
}

//checking if our mouse is pressed, and also 
//if our mouseX & mouseY values are changing
//void mouseDragged(){
//  c += 10; 
//  if(c >255){
//    c = 0; 
//  }
//}

//if our mouseX & mouseY values changed
void mouseMoved(){
  c += 10; 
  if(c >255){
    c = 0; 
  }
}