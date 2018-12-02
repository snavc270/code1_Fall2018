Objects myObjects [] = new Objects[10]; //creating an array of objects 

void setup(){
  size(800, 600); 
  
  for(int i = 0; i<10; i++){
    myObjects[i] = new Objects(100, (i+1)*50); //assigning x & y values to each instance of our objects
  }
}

void draw(){
  background(0); 
  
  for(int i = 0; i<10; i++){
    myObjects[i].move(); 
    myObjects[i].reset(); 
    myObjects[i].display(); 
  }
}