float x, y; 
float theta = 0; 

void setup() {
  size(600, 600); 

  frameRate(10);
}

void draw() {
  background(255); 

  theta += 5;

  pushMatrix(); 
    translate(width/2, height/2); 
    rotate(radians(theta)); 
    y = sin(theta)*25 + 200; 
    fill(255); 
    ellipse(0, y, 50, 50); 
  popMatrix(); 

  fill(0); 
  ellipse(width/2, height/2, 100, 100);
}