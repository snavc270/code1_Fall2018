String additionSentence; 
int n1, n2;

void setup(){
  size(500, 500); 
  println(addition(4, 5)); 
  textSize(42); 
}

void draw(){
  background(0); 
  //first number + second number = sum
  additionSentence = n1 + " + " + n2 + " = " + addition(n1, n2); 
  text(additionSentence, width/2, height/2); 
  
}

void mousePressed(){
   
  n1 = int(random(0, 10)); 
  n2 = int(random(0, 10)); 
}

int addition(int a, int b){
  int sum = a + b; 
  return sum; 
}

//create an integer function, that adds
//two numbers, and returns the sum 