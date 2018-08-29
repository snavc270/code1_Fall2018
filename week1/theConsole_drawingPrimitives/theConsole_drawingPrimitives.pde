//this is where we define our variables for the sketch
//think like our bread, peanut butter, etc. in our pseudocode
//int is a integer i.e. -1, 0, 1, etc. 
int w; 
int h; 
//float is a decimal
float myFloat; 
//string is a group of text
String myString; 

void setup(){
  //defining the value of our variable
  myString = "Hello Console"; 
  
  //printing our string variable to the console
  //println(myString); 
  
  //defining our integer variables 
  w = 100; 
  h = 200; 
  
  //setting the size of our canvas window 
  size(500, 500);
  
  //defining the background color
  background(100, 0, 255); 
  
  //removing the stroke from our shapes 
  noStroke(); 
  
  //slowing down the rate of how fast our draw loop refreshes 
  //frameRate(.5); 
 
  textSize(24); 
}

void draw(){
  //this will print our string in infinite loops 
  //println("Hello Console"); 
  //println("Hi Back"); 
  
  //tells our rectangle to draw from the center of the object
  rectMode(CENTER); 
  //fill color for rect; random will generate a random color every time the draw 
  //loop refreshes 
  fill(random(0,255), random(0,255), random(0,255)); 
  rect(width*.25, height*.25, w, h);
  
  fill(0, 200, 200);
  ellipse(width*.25, height*.25, 50, 50);
  
  //displays text on the canvas vs. the console 
  text(myString, width/2, height/2); 
}