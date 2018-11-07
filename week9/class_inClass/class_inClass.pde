Plant daryl; 
Plant eugene; 

Plant garden [] = new Plant[10]; 

void setup(){
  size(700, 500); 
  
  //daryl = new Plant(int(random(100,200))); 
  //eugene = new Plant(int(random(100,200))); 
  noStroke(); 
  
  for(int i = 0; i<garden.length;i++){ 
    garden[i] = new Plant(random(10,50),int(random(100,width))); 
  }
}

void draw(){
  background(255); 
  //eugene.display(10, 4, color(0, 150, 50)); 
  //daryl.display(100, 10, color(0, 255, 100)); 
  
  for(int i = 0; i<garden.length; i++){
    garden[i].display(2+i*3, color(0, i*20, 50)); 
    garden[i].grow();  
    println(garden[0].plantHeight); 
  }
}