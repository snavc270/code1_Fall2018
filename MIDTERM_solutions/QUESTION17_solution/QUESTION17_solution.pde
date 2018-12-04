int gridW = 10;
int gridH = 10;
float[][] greyColors = new float[gridW][gridH];

void setup() {
  size(600, 600);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
    }
  }
}

void draw() {
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      if(greyColors[i][j]>=255){
        greyColors[i][j] = 0; 
      }
      greyColors[i][j]+=1;
      fill(greyColors[i][j]);
      rect(i*width/gridW, j*height/gridH, width/gridW, height/gridH);
    }
  }
}