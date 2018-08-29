//here is where we define our variables
//variable declaration is defined by variableType (int, float, string, etc.) variableName (whatever you decide to call your variable

//here we created a variable of type integer and named it bgColor
int bgColor = 255; //declared our variable value 

//variables for our tree
int treeSize; 
int treePosition; 
void setup() {
  
  //the size function is used to define the size of our canvas 
  //first parameter is width, second is height
  size(500, 500); 
  background(bgColor);
  
  treeSize = int(width*.25);  //this would usually be float, but we use the int function to round our decimal to an integer
  treePosition = int(width*.5); 
  
  //remember that everything in our setup function will only run once 
  //if we want to print out a variable at the start of our sketch, we would do it here 
  println(treePosition); //prints out our tree position 
}

void draw() {
  //if we want to continuously print out our tree position, it needs to be in the draw function
  println(treePosition); 
  
  rectMode(CENTER); //this draws our rectangle from the center vs. the default corner 
  fill(100, 50, 50); 
  rect(100, 150, 25, 100); 
  
  fill(0, 200, 0); 
  ellipse(100, 100, 100, 100); 
  
  //positioning our tree as a proportion of our width and height
  //this allows us to scale our tree no matter what size our canvas is 
  rectMode(CENTER); //this draws our rectangle from the center vs. the default corner 
  fill(100, 50, 50); 
  rect(treePosition, treePosition+treeSize*.5, treeSize*.25, treeSize); 
  
  fill(0, 200, 0); 
  ellipse(treePosition, treePosition, treeSize, treeSize); 
  
}