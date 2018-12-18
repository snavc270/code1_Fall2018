class Shape{
  float x, y; 
  float size; 
  
  Shape(float _x, float _y, float _size){
    x = _x; 
    y = _y; 
    
    size = _size; 
  }
  
  void display(){
    ellipse(x, y, size, size);  
    triangle(x, y-size/2, x+size/3, y+size/3, x-size/3, y+size/3); 
  }
}