PImage img; 
int cellSize = 2; 
int cols, rows; 

void setup(){
  size(300, 231, P3D); //in order to use 3 dimensions in processing, must specify in your size setup
  //need to have the exact dimensions of our image in order to get pixel information 
  
  img= loadImage("1.jpg"); 
  cols = width/cellSize; 
  rows = height/cellSize; 
}

void draw(){
  background(0); 
  loadPixels(); //function built within processing, loads pixels into a 1d array 
  
  for(int i= 0; i<cols; i++){
    for(int j =0; j<rows; j++){
      int x = i * cellSize + cellSize/2; //position along the x axis
      int y = j * cellSize + cellSize/2; //position along the y axis
      int loc = x + y * width; //calculates the position of your pixels 
      //gets the data from your 1d array based on calculation of your location
      color c = img.pixels[loc]; 
      
      float z = (mouseX/(float(width))) * brightness(img.pixels[loc]); 
      float r = (mouseY/(float(height))) * brightness(img.pixels[loc]); 
      //z position is calculated based our our mouseX position and the brightness of the pixels
      pushMatrix(); 
        translate(x, y, z); 
        //rotate(r); 
        fill(c); 
        noStroke(); 
        rectMode(CENTER); 
        rect(0, 0, cellSize, cellSize); 
      popMatrix(); 
    }
  }
  ///////////////////////////////////////////////////////////////////////
  //EXTRA CREDIT 
  //MAKE INDIVIDUAL PIXELS FALL (GRAVITY) WHENVER YOUR MOUSE HOVERS ON THEM
  
  //HINT: WE DID SOMETHING SIMILAR TO THIS IN WEEK 7 twoDArray_3
  //HINT: CREATE A 2D ARRAY TO STORE THE SPEED OF EACH PIXEl. YOU WILL ONLY NEED A SPEED FOR Y
  //      CREATE A BOOLEAN ARRAY FOR EACH PIXEL TO SEE IF IT IS FALLING OR NOT 
  
  //HINT: 
  //THIS REFERENCE PAGE REVIEWS HOW TO GET 2D X POSITION FROM A 3D SPACE
  //https://processing.org/reference/screenX_.html
}