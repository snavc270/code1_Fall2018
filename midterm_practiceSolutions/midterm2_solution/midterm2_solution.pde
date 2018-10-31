//translate 

//with boundaries 

float x = -100; 
float y = 0;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + y));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
  x+=5;
  
  if (x > width + 100) {
    x = -100;
    y += 70;
  }
}