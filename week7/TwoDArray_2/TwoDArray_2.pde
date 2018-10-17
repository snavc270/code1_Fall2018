int size = 50; 
color[][] grid = new int[size][size]; 
int[][] opacity = new int[size][size]; 

void setup(){
  size(500, 500); 
  noStroke(); 
  
  
  //setting rectangles = to grid of colors 
  for (int i = 0; i< size; i++){
    for (int j = 0; j< size; j++){
      grid[i][j] = color(random(50,140), random(150,255), random(200,255)); 
      opacity[i][j]= 255; 
    }
  }
}

void draw(){
  background(0); 
  for(int i = 0; i< size; i++){
    for(int j = 0; j< size; j++){
      fill(grid[i][j], opacity[i][j]);
      rect(i*size, j*size, size, size);
      
      if(mousePressed){
        if(mouseX>=(i*size) && mouseX<((i+1)*size) && mouseY>=(j*size) && mouseY < ((j+1)*size)){
          opacity[i][j] = 0; 
        }
        //else{
        //  opacity[i][j] = 255; 
        //}
      }
    }
  }
}