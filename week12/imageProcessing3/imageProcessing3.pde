PImage doge;

//for walker

int xpos;
int ypos;
float xchange;
float ychange;

void setup() {      
  size(500,500);  
  background(255); 
  doge = loadImage("doge.jpg"); 
  noStroke(); 
  //for walker
  
  xpos = width/2; 
  ypos = height/2; 
  xchange = 0; 
  ychange = 0; 
  
}

void draw(){
  
  //this is code similar to our random walker from a few weeks ago 
  xchange = int(random(-5,5));
  ychange = int(random(-5,5));
  xpos += xchange;
  ypos += ychange;
  color posColor = doge.get(xpos,ypos);
  fill(posColor);
  ellipse(xpos,ypos,5,5);
  
  ////////////////////////////////////////////////////////////////////
  //EXTRA CREDIT
  //GENERATE MULTIPLE WALKER FOR THE SKETCH 
  //I.E. CLICKING ON THE IMAGE SHOULD GENERATE ANOTHER RANDOM WALKER
  //HINT CREATE A CLASS OF WALKERS (WE DID THIS IN CLASS)
  
}