//change this sketch so it rotates around the original position of the shape 

void setup() {
  size(600, 600); 
  rectMode(CENTER); 
}

void draw(){
  rect(width/2, height/2, 100, 100); 
  
  pushMatrix(); 
  translate(width/2, height/2);
  rotate(radians(45)); 
  rect(0, 0, 100, 100); 
  popMatrix(); 
}