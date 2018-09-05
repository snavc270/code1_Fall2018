int brushSize; 

void setup(){
  size(1000, 1000); 
  background(255); 
  brushSize = 10; 
}

void draw(){
  fill(255, 2); 
  rect(0, 0, width, height); 
  
  if(mousePressed){
    fill(0, 255, 100); 
    noStroke(); 
    ellipse(mouseX, mouseY, brushSize, brushSize); 
  }
  
  //if(keyPressed){
  //  brushSize += 10; 
  //}
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += 10; 
    }else if(keyCode == DOWN && brushSize >10){
      brushSize -= 10; 
    }
  }
}
//https://codeshare.io/aJP77n
//only draws one ellipse when click mouse
//void mousePressed(){
//  fill(0, 255, 100); 
//  noStroke(); 
//  ellipse(mouseX, mouseY, brushSize, brushSize); 
//}