class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;
  color c; 
  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(5, 10);
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display(color c) {
    this.c = c; 
    fill(c);
    stroke(0);
    ellipse(x, y, siz, siz);
  }
}