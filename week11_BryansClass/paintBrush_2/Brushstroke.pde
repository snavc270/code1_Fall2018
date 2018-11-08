class Brushstroke {
  float x, y;
  float vx, vy;
  float siz = 10;
  float lifetime = 10;
  color c; 
  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vy = random(.01,.1);
    //siz = random(5, 10);
  }

  void update() {
    //x += vx;
    y += vy;
  }


  void display(color c, float siz) {
    this.siz = siz ;
    this.c = c; 
    fill(c);
    ellipse(x, y, siz, siz);
  }
}