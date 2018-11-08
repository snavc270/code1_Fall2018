PImage img;
Brushstroke brushstroke; 
int size = 10;

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
  smooth(); 
}

void draw() {  

  if(mousePressed){
    brushstroke = new Brushstroke(mouseX, mouseY);
  }
  if(brushstroke!=null){
    brushstroke.update(); 
    brushstroke.display(color(map(mouseX, 0, width, 0,255), 
    map(mouseY, 0, width, 0, 255), map(mouseX, 0,width, 100,255)), size); 
  }

 
}



void keyPressed(){
  if(key==CODED){
    if(keyCode==UP){
      if(size<100){
        size +=10;  
      }
    }else if (keyCode ==DOWN){
      if(size>20){
        size-= 10; 
      } 
    }
  }
}