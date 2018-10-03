void setup(){
  size(600, 600); 
  //noStroke(); 
}

void draw(){
  background(0); 
  for (int i = 0; i <= 60; i++) {
      
      //map a fill color to the loop index
      fill(map(i,0,60,0,255));
      
      //draw an ellipse with a position based on the loop index
      ellipse(i * 10 + 1, 400 + i, 100, 100);
      
      //try this one to have mouse position also influencing ellipse position
      ellipse(i * mouseX/10 + 1, 100 + i, 50, 50);
    }
}