int yPosition = width/2;
void setup() {
  size(600, 600);
}

void draw() {

  ellipse(width/2, yPosition, 100, 100);

  if (yPosition > height) {
    yPosition = 0;
  } else {
    yPosition+=10;
  }
}