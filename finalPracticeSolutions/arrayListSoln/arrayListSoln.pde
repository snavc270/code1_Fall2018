

ArrayList <Ball> balls = new ArrayList<Ball>();  
void setup(){
  size(600, 600); 
  
  //myBall = new Ball();
  
  balls = new ArrayList<Ball>(); 
}

void draw(){
  background(0); 
  //myBall.display(); 
  //myBall.move(); 
  //myBall.sideBounce(); 
  //myBall.bottomBounce(); 
  
  for(int i = 0; i<balls.size(); i++){
    Ball b = balls.get(i); 
    b.display(); 
    b.move(); 
    b.sideBounce(); 
    b.bottomBounce(); 
    
    if(b.pos.y < 0){
      balls.remove(i); 
    }
    
    //calculate the distance between our mouse
    //our instance b 
    //see if our mouse is pressed 
    
    float d = dist(mouseX, mouseY, 
    b.pos.x, b.pos.y);
    
    if(d<b.size && mousePressed){
      balls.remove(i); 
    }
  }
  
  if(balls.size() <=10){
    if(frameCount % 30 == 0){
      balls.add(new Ball()); 
    }
  }
}