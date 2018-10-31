class Ship{
    color col;
    PVector position; 
    PVector velocity; 

    Ship(){
      
      col = color(random(255), random(255), random(255), random(100, 255));
      velocity = new PVector(int(random(1, 10)), 0); 
      
      position = new PVector(int(random(width)), int(random(height))); 
    }
    
    void drawShip(){
      noStroke(); 
      fill(col); 
      
      ellipse(position.x, position.y, 50, 20); 
      ellipse(position.x, position.y-10, 20, 20); 
    }
    
    void moveShip(){
      position.add(velocity); 
      
      if(position.x > width && velocity.x >0){
        position.x= -20; 
        position.add(velocity); 
      }
    }
}