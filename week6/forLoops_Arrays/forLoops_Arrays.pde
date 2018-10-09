int myIntegerArray[] = {1,2,3,4,5}; // declaring an array of integers

String myStringArray[] = {"this", "is", "an", "array", "of", "strings"}; //declaring an array of strings

float randomNums[] = new float[100]; //declare a new empty array of floats with 100 spots

void setup() {
  
  //Iterating through an array
    for (int i = 0; i < myIntegerArray.length; i++){ //for as long as i is less than our array length, increment i and execute the code block
      println(myIntegerArray[i] + " is the current value!");
    }
  //
    for (int i = 0; i < myStringArray.length; i++){
      print(myStringArray[i] + " ");
    }
    print("\n");
   //

  
  
  //Filling up the array manually would be horribly tedious
  //Using a for loop we can do it all easily!
  for (int i = 0; i < randomNums.length; i++){
    randomNums[i] = random(100); //assign i to a random float between 0-100
  }
  println(randomNums);
  //
  
  //Finding a specific index in an array
  for (int i = 0; i < myStringArray.length; i++){
   if (myStringArray[i] == "array"){ //checking to see if the current position of i = "array"
    print(i); 
   }
  }
  //
  
  
  
  
  

}