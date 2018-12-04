int w = 400; 
int h = 200; 
void setup() {
  size(600, 600);
  background(50);
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, w, h);
}

void draw() {
  float x = random(width/2-w/2, width/2+w/2);
  float y = random(height/2-h/2, height/2+h/2);
  stroke(255);
  point(x, y);
}