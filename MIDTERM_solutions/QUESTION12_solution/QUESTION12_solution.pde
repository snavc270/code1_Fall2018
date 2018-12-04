void setup() {
  size(600, 600);
  noStroke();
}
int x = 15;
void draw() {
  //background(150);
  for (int i = 0; i < 10; i++) {
    rect(x, 150, 30, 300);
    x += 60;
  }
}