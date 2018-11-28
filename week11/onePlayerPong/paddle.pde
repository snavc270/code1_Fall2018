class Paddle {
  float xPos, yPos;
  float d = 25; 
  float rectSize; 

  Paddle(float _xPos) {
    xPos = _xPos; 
    yPos = 100; 
    rectSize = 200;
  }
  
  void update(){
    yPos = mouseY; 
  }

  void display() {
    rectMode(CENTER); 
    fill(0, 255, 0); 
    rect(xPos, yPos, 10, rectSize);
  }
}