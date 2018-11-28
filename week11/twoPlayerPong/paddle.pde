class Paddle {
  float xPos, yPos;
  float d = 25; 
  float rectSize; 

  Paddle(float _xPos, float _yPos) {
    xPos = _xPos; 
    yPos = _yPos; 
    rectSize = 200;
  }

  void display() {
    fill(0, 255, 0); 
    rect(xPos, yPos-rectSize/2, 10, rectSize);
  }

  void moveUp() {
      yPos -= 10;
  }

  void moveDown() {
      yPos += 10;
  }
}