class Particle{
  //data 
  PVector position; 
  PVector velocity; 
  PVector gravity; 
  
  color c; 
  float size = 20;
  
  Particle(){
    //sets our x & y position pvector to our mouse position
    position = new PVector(mouseX, mouseY); 
    
    velocity = new PVector(random(-5,5), random(1,5));
    gravity = new PVector(0, .1);   
}
  
  void fall(){
    position.add(velocity); 
  }
  
  void gravity(){
    velocity.add(gravity); 
  }
  
  void bounce(){
    velocity.y = -(velocity.y); 
  }
  
  void sideBounce(){
    velocity.x = -velocity.x; 
  }

  void display(){
    noStroke(); 
    c = color(map(position.x, 0, width, 0,255),
    map(position.y, 0, width, 100, 255), 175); 
    fill(c); 
    
    size = map(position.y, 0, height, 10, 50); 
    ellipse(position.x, position.y, size, size); 
  }
}