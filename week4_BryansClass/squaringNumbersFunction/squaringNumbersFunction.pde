int x, y; 
int size = 100; 
void setup(){
 size(500, 500); 
 x = size/2; 
 y = size/2; 
 rectMode(CENTER); 
}

void draw(){
  rect(x, y, size, size); 
   x+=5; 
  if(x>width || y>height){ //x position goes beyond my screen
  //then reset x position to 0
    x = 0; 
    y = y + size;
     
  }
  println(squareNumber(5)); 
}

int squareNumber(int num){
  //return int(sq(num)); 
  //return num*num;
  return int(pow(num, 2)); 
  
}