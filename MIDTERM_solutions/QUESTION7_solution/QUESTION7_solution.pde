void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      ellipse(i * 60, j * 60, 50, 50);
    }
  }
}