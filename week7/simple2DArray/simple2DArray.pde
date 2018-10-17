int numbers [][] = {{1, 2, 3, 4, 5}, {6, 7, 8, 9, 10}, {11, 12, 13, 14, 15}}; 

void setup(){
  //accessing single item of array 
  println(numbers[0][1]); 
  
  for (int i = 0; i<3; i++){
    for(int j = 0; j<5; j++){
      println(numbers[i][j]); 
    }
  }
}