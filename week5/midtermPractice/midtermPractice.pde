//create a button that generates the product of two random integers
//the multiplication sentence should be displayed somewhere on the screen 

//the sketch is started for you, but isn't quite right 


int x, y; 
int size; 
float dist; 
boolean buttonClicked; 


float result; 
float num1, num2; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
  background(0); 
}

void draw(){

    result = multiply(num1, num2); 

    textSize(32); 
    
    String result = num1 + " x " + num2 + " = " + result; 
    
    text(result, 0, height*.8);
    
    if(buttonClicked){    
       fill(0, 255, 0); 
    }else{
       fill(255, 0, 0); 
    }
    
    num1 = random(0,100); 
    num2 = random(0,100); 
   
    ellipse(x, y, size, size);  
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = true; 
  }
}

int multiply (int a, int b){
    float product; 
    product = a * b; 
}