//Particle myParticle; 

ArrayList <Particle> particles = new ArrayList<Particle>(); 
void setup(){
  size(600, 600);
  smooth(); 
  noStroke(); 
  
  //myParticle = new Particle(width/2, height/2); 
}

void draw(){
  background(0); 
  
  //myParticle.move();
  //myParticle.bounce(); 
  //myParticle.display(); 
  
  //to check to see if a particle is still alive, can use .dead() method
  //println(myParticle.dead()); 
  
  for(int i = 0; i<particles.size(); i++){
    Particle p = particles.get(i); 
    p.move(); 
    p.bounce(); 
    p.display(); 
    
    if(p.dead()){
      particles.remove(i); 
    }
  }
  
  if(frameCount % 30 == 0){
    particles.add(new Particle(random(0, width), random(0, height))); 
  }
}