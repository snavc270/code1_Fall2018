PImage doge;

//for walker

int xpos;
int ypos;
float xchange;
float ychange;

void setup() {      
  size(500,500);    
  doge = loadImage("doge.jpg"); 
  noStroke(); 
  //for walker
  
  xpos = width/2; 
  ypos = height/2; 
  xchange = 0; 
  ychange = 0; 
  
}

void draw(){

  image(doge,0,0);
  //get color of pixel based on position of mouse
  color posColor = doge.get(mouseX,mouseY);

  //fill based on that position
  fill(posColor);
  
  //draw ellipse based on mouseX & mouseY
  ellipse(mouseX,mouseY,10,10);
  
  //map the size of the circle based on the brightness of that pixel
  float posBrightness = brightness(posColor)/2;
  ellipse(mouseX,mouseY,posBrightness,posBrightness); 
}