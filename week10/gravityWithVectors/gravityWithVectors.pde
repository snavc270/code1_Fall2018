
// Inspired by the work of Adrien M and Claire B
// Borrowing some code from Daniel Shiffman's
// "Learning Processing", Chapter 5

float size; 
float hue; 

char c; 

PVector pos; 
PVector velocity; 
PVector gravity; //acceleration in the y direction; 

Boolean isMoving; //

void setup(){
  size(600, 600); 
  
  //set up parameters 
  size = 80; 
  //declaring new pVectors for position and velocity
  pos = new PVector(random(width), random(height-100)); 
  velocity = new PVector(0, 0); 
  //create acceleration vector for gravity
  //gravity only accelerates in the y direction
  gravity = new PVector(0, 0.1); 
  hue = random(255); 
 
  c = (char) int(random(65,90)); 
  isMoving = false; 
}

void draw(){
  background(255); 
  
  //calculating distance between mouseX, mouseY
  //access position of vector with .x .y notation 
  float distance = dist(mouseX, mouseY, pos.x, pos.y); 
  
  noStroke();
 // check if the distance between the mouse and the position 
// of the character is less than the character's radius 
  if(distance < size/2){
    fill(hue, 150, 255); 
    isMoving = true; 
  }else {
    fill(hue, 255, 255); 
  }
  
  textSize(size); 
  textAlign(CENTER, CENTER); 
  text(c, pos.x, pos.y); 
  
  //check if letter is moving
  //if letter is moving, i.e. mouse collides with letter, then...
  if(isMoving){
     //add velocity vector to position vector; 
     pos.add(velocity); 
     //add gravity to the velocity
     //object is speeding up as gets closer to the ground
     velocity.add(gravity); 
     
     //uncomment the following to add bouncing 
     //if (pos.y > height- size/2){
     //  velocity.y = velocity.y * -0.9; 
     //if(abs(velocity.y) < 3){
     //  velocity.y = 0; 
     //}  
   }
//  }
}