int num = 10; 
Ship[] ufo; 

void setup(){
  size(500, 500); 
  smooth(); 
  
  ufo = new Ship[num]; 
  
  for( int i =0; i<num; i++){
    ufo[i] = new Ship(); 
  }
}

void draw(){
    background(250); 
    
    for(int i = 0; i<num; i++){
      ufo[i].drawShip(); 
      ufo[i].moveShip();      
    }
}