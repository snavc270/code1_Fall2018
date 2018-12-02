PVector pos [] = new PVector[3];  //position pvectors 
//could either do this in arrays or individually 
PVector vel [] = new PVector[3]; 
PVector accel; //we don't need an array for acceleration since only need one acceleration

void setup(){
  size(800, 600); 
  
  for(int i = 0; i<3; i++){
    pos[i] = new PVector(width*.1, height*(i+1)*.25); 
    vel[i] = new PVector(4, 0);
  } 
  accel = new PVector(.5, 0); 
}

void draw(){
  background(255); 
  
  fill(0);
  
  pos[1].add(vel[1]); //add vel to our second ellipse 
  pos[2].add(vel[2]); //add vel to our third ellipse
  vel[2].add(accel);  //add acceleration to our third ellipse
  
  for(int i = 0; i<3; i++){
    ellipse(pos[i].x, pos[i].y, 50, 50); 
  }
}