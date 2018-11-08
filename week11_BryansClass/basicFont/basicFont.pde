PFont font; 

String [] words = {"whatever", "you", "want"}; 
void setup(){
  size(500, 500); 
  font = createFont("AndaleMono-48", 48); 
  
  textFont(font); 
}

void draw(){
  text("hello!", width/2, height/2); 
  
  for(int i= 0; i<words.length; i++){
    text(words[i], i * 200, 100); 
  }
}