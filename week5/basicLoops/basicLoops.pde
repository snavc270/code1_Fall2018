void setup(){
  // while loop
  //will execute while the condition is true 
  //these can crash you processing program if the loop does not 
  //have an exit condition 
  
  int index = 10; 
  while(index>0){
    println(index); 
    index--; 
  }
  
  //components of a for loop 
    //1. index (counter) to keep track of number of loops 
    //2. starting point for the index
    //3. increments for the index 
    //4. end condition/ exit point 
   
   for (int i = 0; i < 10; i++) {
    println("For Loop: i is " + i);
  }    
}