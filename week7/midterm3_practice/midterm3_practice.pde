//currently the sketch has a 50/50 chance of moving left or right 
//update the sketch so that whenever the mouse is clicked, there is 25% chance it will 
//move up, down, left, or right

int xPos, yPos, delta = 10;

void setup(){
  size(600, 600); 
  xPos = width / 2; 
  yPos = height / 2; 
}

void draw(){
  background(0);
  ellipse(xPos, yPos, 50, 50);
  if(frameCount%10==0){
    switch (floor(random(0, 4))) {
      case 0:
        xPos += delta;
        break;
      case 1:
        xPos -= delta;
        break;
      case 2:
        yPos += delta;
        break;
      case 3:
        yPos -= delta;
        break;
    }
  }
}

void mousePressed(){
  
}