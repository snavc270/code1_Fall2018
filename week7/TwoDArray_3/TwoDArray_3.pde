int size = 50; 
color[][] grid = new int[size][size]; 
int[][] opacity = new int[size][size]; 
int[][] speed = new int[size][size]; 

boolean [][] fall = new boolean[size][size]; 
void setup(){
  size(500, 500); 
  noStroke(); 
  
  
  //setting rectangles = to grid of colors 
  for (int i = 0; i< size; i++){
    for (int j = 0; j< size; j++){
      grid[i][j] = color(random(50,140), random(150,255), random(200,255)); 
      opacity[i][j]= 255; 
      speed[i][j] = 1; 
    }
  }
}

void draw(){
  background(0); 
  //for(int i = 0; i< size; i++){
  //  for(int j = 0; j< size; j++){
    
    //reverse loop to draw squares over top of each other 
    for(int i = size-1; i>= 0; i--){
      for(int j = size-1; j>= 0; j--){
      fill(grid[i][j], opacity[i][j]);
      rect(i*size, j*size+speed[i][j], size, size);
    
      if(mousePressed){
        if(mouseX>=(i*size) && mouseX<((i+1)*size) && mouseY>=(j*size) && mouseY < ((j+1)*size)){
          //speed[i][j] ++;  
          fall[i][j] = true; 
        }
      }
      if(fall[i][j]){
          speed[i][j] += 10; 
      }
    }
  }
}