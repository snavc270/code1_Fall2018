class Objects{

  PVector pos; 
  PVector vel; 
  PVector accel; 
  
  int size = 50; 


  Objects(int x, int y){ //set up position parameters here
    pos = new PVector(x, y); 
    vel = new PVector(random(2,4), 0); //only move in the x direction 
    accel = new PVector(random(.1, 1), 0);
  }
  
  void move(){
    pos.add(vel); 
    vel.add(accel); 
  }

  void reset(){
    if(pos.x > width+size/2){
      pos.x = 100; 
      vel = new PVector(random(2,4), 0); //resetting vel so objects don't accel infinitely
    }
  }
  
  void display(){
    fill(255); 
    ellipse(pos.x, pos.y, size, size); 
  }
}