//Bootcamp Day 8
// How Does Your Garden Grow? 
//An intro to Classes and Objects

Plant bobby;
Plant kitty;
Plant margaret;
Plant duggan;

color bColor = color(5, 255, 170);
color kColor = color(20, 25, 150);
color mColor = color(15, 255, 220);
color dColor = color(5, 200, 100);

float randPlace;

void setup(){
  size(700, 500);
  randPlace = random(100, 200);
  //Declare your objects 
  bobby = new Plant(randPlace);
  kitty = new Plant(randPlace + 100);
  duggan = new Plant(randPlace + 200);
  margaret = new Plant(randPlace + 300);
  
  noStroke();
  ellipseMode(CENTER);
}

class Plant {
//Declare the qualities that all Plants will have
  float plantHeight;
  int leafs;
  color plantColor;
  float x; //their X location in the garden
  
  
// Contructor
  Plant(float tempX){
    x = tempX;
  }
  
// Custom method for drawing the object
  void display(color tempColor, int tempLeafNum, float tempYHeight){
    plantHeight = tempYHeight;
    fill(tempColor);
    rect(x, plantHeight, 10, 500);
    
    leafs = tempLeafNum; 
    for(int i = 0; i < leafs; i++){
     float ly = plantHeight + 30*i;
     ellipse(x, ly, 50+(i*5), 20);
    }
  }
}

void draw(){
  background(170, 230, 255);
  bobby.display(bColor, 5, 250.0);
  kitty.display(kColor, 10, 50.0);
  margaret.display(mColor, 8, 150.0);
  duggan.display(dColor, 6, 100.0);
  
  fill(50, 250, 90);
  rect(0, 350, 700, 150);
  
}