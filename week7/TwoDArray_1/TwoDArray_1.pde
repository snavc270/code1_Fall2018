int size = 50; 
color[][] grid = new int[size][size]; 
int[][] opacity = new int[size][size]; 
//int[][] speed = new int[size][size]; 

void setup(){
  size(500, 500); 
  noStroke(); 
  
  
  //setting rectangles = to grid of colors 
  for (int i = 0; i< 50; i++){
    for (int j = 0; j< 50; j++){
      grid[i][j] = color(random(50,140), random(150,255), random(200,255)); 
      fill(grid[i][j]); 
      rect(i*size, j*size, size, size); 
    }
  }
}

void draw(){
}