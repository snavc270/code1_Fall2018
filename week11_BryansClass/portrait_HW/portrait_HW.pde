

// code 1 FA 18
// bryan ma

// generative portrait 1

// this sketch, as well as w10_05_portrait2, uses the basic approach we used
// in class to create a generative representation of an image loaded into memory.
// use one of these two sketches as the starting point to create your own 
// generative graphic "portrait". try using red(), green(), blue(), saturation(), 
// hue(), and brightness() to get values to represent in your drawing.

// bonus - apply a class inspired by w10_03_paintbrush to your approach.
// instead of drawing a simple ellipse or other shape, create an instance 
// of the brushstroke class at every sourced point that you get() the color on.

// in the case of w10_05_portrait2, they would all need to be loaded into 
// an arraylist and drawn all together, as well as modified in order to have 
// a particle-like lifetime, or something similar.
import processing.pdf.*;

boolean saveOneFrame = false; 

PImage img;
Brushstroke brushstroke; 

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
  frameRate(24); 
  beginRecord(PDF, "Line.pdf"); 
}

void draw() {  
  int x = mouseX;
  int y = mouseY;
  color c = img.get(x, y);
  
  //fill(c);
  
  //fill based on brightness of color value c 
  float b = brightness(c); 
  float v; 
  //set up conditional for brightness level 
  if(b>200){
    v = 255; 
  }else{
    v = 0; 
  }
  //fill(v); 
  
  //gets the green value from .get color info return 
  float g = green(c); 
  //fill(g); 
  
  
  //creates an instance of the brustroke 
  //note this is different than adding an instance to an arrayList
  //this instance is dependent on our mousePressed 
  if(mousePressed){
    brushstroke = new Brushstroke(mouseX, mouseY);
  }
  if(brushstroke!=null){
    brushstroke.update(); 
    //sets the display color of our brush stroke to the brightness conditional value
    //could also set to blue, green, red, or c values 
    brushstroke.display(color(v)); 
  }
  
  //ellipse(x,y,20,20);
  
  //using loadPixels() 
  
  //img.loadPixels(); 
  //for(int i = 0; i< img.width; i++){
  //  for(int j = 0; j< img.height; j++){
  //    int pos = i +j*img.width; 
      
  //    if(brightness(img.pixels[pos])>200){
  //      img.pixels[pos] = color(255); 
  //    }else{
  //      img.pixels[pos] = color(0); 
  //    }
  //  }
  //}
  
  //img.updatePixels(); 
  //image(img, 0, 0); 
 
}



void keyPressed(){
  if(key==CODED){
    if(keyCode==UP){
        endRecord(); 
        exit(); 
    }
  }

}