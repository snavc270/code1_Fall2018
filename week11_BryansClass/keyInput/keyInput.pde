void setup(){
  size(500, 500); 
}

int y = 0; 
int x = 0; 
void draw(){
  //keyPressed is boolean 
  if(keyPressed){
    if(key==CODED){
    if(keyCode==UP){
      y-=10; 
    }else if(keyCode == DOWN){
      y+=10; 
    }else if(keyCode == LEFT){
      x-=10; 
    }else if(keyCode == RIGHT){
      x+=10; 
    }
  }
  }
  
  ellipse(x, y, 50, 50); 
}

void keyPressed(){
  if(key == 'a' || key =='A'){
    y-=10; 
  }
  
  //if(key==CODED){
  //  if(keyCode==UP){
  //    y-=10; 
  //  }else if(keyCode == DOWN){
  //    y+=10; 
  //  }else if(keyCode == LEFT){
  //    x-=10; 
  //  }else if(keyCode == RIGHT){
  //    x+=10; 
  //  }
  //}
}