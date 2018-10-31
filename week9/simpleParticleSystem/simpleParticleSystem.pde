//Sketch 2: Class and ArrayList of objects
//Inspired from Daniel Shiffman's Simple Particle System with ArrayList

//declare an arraylist of particles
ArrayList<Particle> particles;
 
void setup() {
  size(800, 800);
  particles = new ArrayList<Particle>();
  smooth(); //smoothes the edges of any shape
}
 
void draw() {
 
  background(255);

  for (int i=0; i<particles.size(); i++) {
    Particle p = particles.get(i); //get the Particle at the ith position from the array list and perform the following functions
    p.run();
    p.gravity();
    p.display();
 
    // check to see if particle touches the bottom and sides of the screen
    // if so, make it bounce back
    if (p.y>height) {
      p.bounce();
    }
    
    if(p.x<0 || p.x>width){
      p.sideBounce();
    }
    
    //if the particle touches the top edge, remove it
    if(p.y<0){
      particles.remove(i);
    }
  }
 
  //print the size of the particle array
  //println(particles.size());
}

 
// add a new particle each time the mouse is pressed
void mousePressed() {
  
  particles.add(new Particle()); //new particle added to the array list
}
 
//a Particle class
class Particle {
  //position components
  float x; 
  float y;
  
  //speed components
  float xspeed;  
  float yspeed;
  
  //size
  float size;
  
  //color
  int c;
  int r;
  int g;
  int b;
  
  //constructor
  Particle() {
    //position of particles set to the mouse position
    x = mouseX;
    y = mouseY;
    
    //speed set to a random value
    xspeed = random(-5, 5); 
    yspeed = random(1, 5);
    
  }
 
  //methods:
  //move particle
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }
 
  //gravity acting in the y direction
  void  gravity() { 
    yspeed += 0.05;
    
  }
  
  //bounce from the bottom edge
  void bounce(){
    yspeed = -yspeed;
    
  }
  
  //bounce from the side walls
  void sideBounce(){
    xspeed = -xspeed;
  }
 
  //draw particle
  void display() {
    
    //making color depend on the speed
    c = (int) (abs(xspeed) + abs(yspeed))*10 + 30;
    
    r = 250 - c;
    g = c;
    b = c + 40;
    
    noStroke();
     fill(r,g,b);
   
    //making size depend on the speed
    if(abs(xspeed) > abs(yspeed)){
      size = abs(xspeed)*5 + 5;
    }else{
      size = abs(yspeed)*5 + 5;
    }
    
    //draw
    ellipse(x, y, size, size);
  }
}