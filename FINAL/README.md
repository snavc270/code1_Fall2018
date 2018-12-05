### FINAL EXAM
Please submit a link to your github respository folder to canvas before 11:59PM tonight (12/4). Late assignments without prior arrangements will not be graded. 

### QUESTION 1: PVectors 

create a PVector for velocity and acceleration. make the ellipse fall until it reaches the 
bottom of the canvas, then reset it's position back to the top of the screen. make sure your ellipse doesn't continuously accelerate once it's reset. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/FINAL/IMG/Q1.gif?raw=true "")

```
PVector pos, vel, accel; 

void setup(){
	size(600, 600); 

	pos = new PVector(width/2, 25); 

	smooth(); 
}

void draw(){
	background(0); 

	ellipse(pos.x, pos.y, 25, 25); 

	if(pos.y >= height){

	}
}
```

### QUESTION 2: Orbital motion (sin & cos)

currently only the x position oscilates around the middle of the canvas. adjust the sketch so the ellipse orbits around the mouse position at a radial orbit size of 100. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/FINAL/IMG/Q2.gif?raw=true "")

```
float x, y; 
int theta; 
int orbitRadius; 

void setup(){
	size(600, 600); 
}

void draw(){
	background(0, 100, 200); 

	x = cos(radians(theta))*orbitRadius + width/2; 

	ellipse(x, y, 25, 25); 
}

```

### QUESTION 3: Wave motion (sin & cos)
this sketch should draw 25 ellipses, evenly across the canvas, that oscillate at slightly different frequency. adjust the ellipse spacing, change the y offset so the wave starts in the middle of the canvas, and change the height of the wave so it covers the entire canvas.

![](https://github.com/snavc270/code1_Fall2018/blob/master/FINAL/IMG/Q3.gif?raw=true "")

``` 
int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta;

int waveOffset; 

void setup(){
  size(500, 500); 
  
  int spacing = width/num; 
  
  for(int i = 0; i<num; i++){
    xPos[i] = i + size/2; 
  }
}

void draw(){
  background(100); 
  
 
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], 100 + sin(theta + i*.2)*40, size, size );  
  }
  
  theta += .01; 
}
``` 

### QUESTION 4: Classes

this sketch currently draws a single ship that doesn't move. Fix the sketch to have an array of 40 ships that all move across the canvas and get reset when they move across the edge of the screen. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/FINAL/IMG/Q4.gif?raw=true "")

```
Ship myShip;

void setup(){
  size(800, 600); 
  noStroke(); 
  
  myShip = new Ship(random(0, width),random(0, height), 
    color(random(0,255), random(0,255), random(0,255), 40)); 
    
}

void draw(){
  background(255); 
  
  myShip.display(); 
  myShip.reset(); 
}

class Ship{
  PVector pos; 
  PVector vel; 
  
  color c; 
  
  Ship(float _x, float _y, color _c){
    pos = new PVector(_x, _y); 
    c = _c; 
    vel = new PVector(random(1, 3), 0); 
    
  }
  
  void move(){
  
  }
  
  void display(){
    fill(c); 
    ellipse(pos.x, pos.y, 20, 20); 
    ellipse(pos.x, pos.y + 20, 40, 20);  
  }
  
  void reset(){
    if(pos.x >= width + 10){
      pos.x = 0; 
    }
  }
}

```
### QUESTION 5: ArrayLists Part 1 

currently all of the shapes are drawn in the top left corner and the size is constantly oscillating. Fix the sketch so the shape is drawn at the mouse position and the size is randomized but doesn't flicker throughout the draw loop. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/FINAL/IMG/Q5.gif?raw=true "")

``` 
ArrayList <Shape> shapes = new ArrayList<Shape>(); 

void setup(){
  size(600, 600); 
}

void draw(){
  background(255); 

  for(int i = 0; i<shapes.size(); i++){
    Shape s =   shapes.get(i); 
    s.display(random(40,50)); 
  }
}

void mousePressed(){
  shapes.add(new Shape(mouseX, mouseY)); 
}

class Shape{
  float x, y; 
  float size; 
  
  Shape(float _x, float _y){
    x = _x; 
    y = _y; 
    
  }
  
  void display(float _size){
    size = _size; 
    
    ellipse(x, y, size, size);  
    triangle(x, y-size/2, x+size/3, y+size/3, x-size/3, y+size/3); 
  }
}

``` 

### Question 6: ArrayLists Part 2
this sketch only draws a single particle that eventually fades to black with each bounce. Create an arrayList of the particles, add a new particle every 30 frames, and finally remove the particle when it is 'dead.' 

![](https://github.com/snavc270/code1_Fall2018/blob/master/FINAL/IMG/Q6.gif?raw=true "")


```
Particle myParticle; 

void setup(){
  size(600, 600); 
  
  myParticle = new Particle(width/2, height/2); 
}

void draw(){
  background(0); 
  
  myParticle.move();
  myParticle.bounce(); 
  myParticle.display(); 
  
  //to check to see if a particle is still alive, can use .dead() method
  println(myParticle.dead()); 
}

class Particle{
  PVector pos; 
  PVector vel; 
  float size; 
  
  int opacity = 255; 
  
  Particle(float x, float y){
     pos = new PVector(x, y); 
     
     vel = new PVector(random(-5, 5), random(-5, 5)); 
     
     size = random(5, 15); 
  }
  
  void move(){
    pos.add(vel); 
  }
  
  void bounce(){
    if(pos.x<= size/2 || pos.x>= width-size/2){
      vel.x = - vel.x*.9; 
      opacity -= 20; 
    }
    if(pos.y<= size/2 || pos.y>= height -size/2){
      vel.y = - vel.y*.9; 
      opacity -= 20; 
    }
  }
  
  void display(){
    fill(255, opacity); 
    ellipse(pos.x, pos.y, size, size); 
  }
  
  boolean dead(){
    if(opacity <= 20){
      return true;
    }else{
      return false;
    }
  }
}
```

### Bonus questions! 

### Bonus questions! 
Due Friday (12/7) at 11:59PM 

1. Create a 1 player pong game complete with lives, score, and multiple balls (hint will need to create a class)
2. Create an image where pixels fall or break apart when mouse clicks them 
	a. Use .get to store pixel information in a 2D array (position & color) 
	b. Create a 2D arrays to store if pixels have been 'activated' or not (hint look at 2DArray_3 example from week 7
