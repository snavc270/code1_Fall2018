class Ball{
  PVector pos; 
  PVector vel; 
  PVector accel; 
  
  int size = 50; 
  
  Ball(){
    pos = new PVector(random(size/2,width-size/2),
    random(size/2,height-size/2));
    vel = new PVector(random(1,2),random(1,2));
    accel = new PVector(0, .008); 
  }  
  
  //side bounce
  void sideBounce(){
    if(pos.x < size/2 || pos.x > width-size/2){
      vel.x = -vel.x; 
    }
  }
  //bottom bounce 
  void bottomBounce(){
    if(pos.y > height-size/2){
      vel.y = -vel.y; 
    }
  }
  //move 
  void move(){
    pos.add(vel); 
    vel.add(accel); 
  }
  
  //display
  void display(){
    ellipse(pos.x, pos.y, size, size); 
  }
}