int myIntegerArray[] = {1,2,3,4,5}; // declaring an array of integers

String myStringArray[] = {"this", "is", "an", "array", "of", "strings"}; //declaring an array of strings

int[] numbers = new int[3]; //declaring an empty array with 3 slots

void setup() {
  
  //Assigning values to empty array
  numbers[0] = 5; //Assigns the first index in the array to 5
  numbers[1] = 2; //Assigns the second index in the array to 2
  numbers[2] = 6; //Assigns the third index in the array to 6
  println(numbers);
  //
  
  //Accessing individual variables within an array - manually
  println(myIntegerArray[0]); //prints first index to console
  println(myStringArray[3]);  //prints fourth index to console
  //

}