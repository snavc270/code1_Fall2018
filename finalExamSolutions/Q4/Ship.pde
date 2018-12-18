class Ship{
  PVector pos; 
  PVector vel; 
  
  color c; 
  
  Ship(float _x, float _y, color _c){
    pos = new PVector(_x, _y); 
    c = _c; 
    vel = new PVector(random(1, 3), 0); 
    
  }
  
  void move(){
    pos.add(vel); 
  }
  
  void display(){
    fill(c); 
    ellipse(pos.x, pos.y, 20, 20); 
    ellipse(pos.x, pos.y + 20, 40, 20);  
  }
  
  void reset(){
    if(pos.x >= width + 10){
      pos.x = 0; 
    }
  }
}