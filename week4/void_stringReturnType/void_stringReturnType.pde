//Function
void returnAString(String string1, String string2){
  println(string1 + "\n" + string2); 
  rect(width/2, height/2, 50, 50); 
} 

//Function call 
void draw(){
//String s = returnAString("i am a string");
//String t = returnAString("this is a new string"); 
//println(s + "\n" + t);
  returnAString("i am a string", "i am another string");
}