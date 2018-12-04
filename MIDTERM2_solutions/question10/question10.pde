void setup() {
  size(600, 600);
  background(50);
  
  fill(0);
  rect(0, 0, width/2, width/2);
  rect(width/2, height/2, width/2, height/2); 
}

void draw() {
  generateRandom(0, width/2, 0, height/2); 
  generateRandom(width/2, width, height/2, height); 
}

void generateRandom(float r1, float r2, float r3, float r4){
  float x = random(r1, r2);
  float y = random(r3, r4);
  stroke(255);
  point(x, y);
}