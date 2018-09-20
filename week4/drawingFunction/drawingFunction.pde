void setup() {
  size(500, 500);
  background(66, 113, 244); 
  noStroke();
}

void draw() {
  
}

void mousePressed() {
  fill(255, 255, 0);
  star(mouseX, mouseY, random(5, 10), random(30, 50), int(random(5, 10)));
}
//from processing references 
//https://processing.org/examples/star.html
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;//TWO_PI = 360 degrees
  //calculates the angles between points based on 360/the number of points
  float halfAngle = angle/2.0;
  
  beginShape();
  //we will go more into for loops next week 
  //basically have an integer that increments by the degree calculated from the number of points
  for (float a = 0; a < TWO_PI; a += angle) {
    //for a star with 3 points, a will be 120, 240, 360
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    //remember your unit circle! 
    vertex(sx, sy); //positions the vertext based on the angle a 
    
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}