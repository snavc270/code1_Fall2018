int x; 
int y; 
int x2, y2; 
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonClicked2; 

//set up a second button 
//do something else when that button is clicked
void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  x2= 100; 
  y2= 100; 
  size = 100; 
}

void draw(){
    
  if(buttonClicked){
    background(0); 
    fill(255, 0, 0); 
  }else{
    background(255); 
    fill(0, 255, 0); 
  }
  
  if(buttonClicked2){
    fill(0, 0, 255); 
    rect(500, 500, 100, 200); 
  }else{
  }
  
  ellipse(x, y, size, size);  
  ellipse(x2, y2, size, size); 
  println(calcDistance(x, y)); 
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <=size/2){
    buttonClicked2 =!buttonClicked2; 
  }
  //calculating distance between second button 
  //hint set up a second boolean 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}