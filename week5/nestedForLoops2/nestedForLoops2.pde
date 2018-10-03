void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(255);
  
  //loop 36 times in x and y
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
      
      //get the distance from the index to the mouse
      float d = dist(mouseX, mouseY, i, j);
      
      //fill a color based on the distance
      fill(map(d, 0, 500, 255, 0));
      
      //create a variable for size and map it to a value based on distance
      float s = map(d, 0, 1000, 10, 50);
      
      //draw an ellipse at the index positions with size s
      ellipse(i, j, s, s);
    }
  }
}