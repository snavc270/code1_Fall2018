### QUESTION 1: Syntax errors

```
// Fix all the syntax errors so the code runs.

int increment; 

numbers [] = new int[4]; 
void setup(){
 size(100, 100); 
 
 increment = .5; 
 
 for(int i = 0; i+; i< 5){
   numbers = random(0, 10); 
 }
 
}

void draw(){
  ellipse(x, y, r, r); 


void mousePressded(){
  int r ++; 
}

```


### QUESTION 2: Conditionals part 1

add a conditional so the ellipse wraps around the canvas––when it reaches the end of 
the canvas it appears on the opposite side

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question2.gif?raw=true "")

```
float x, y; 
float size = 50; 
float xSpeed, ySpeed; 

void setup(){
  size(600, 600); 
  
  x = width/2; 
  y = height/2; 
  
  xSpeed = random(1, 4); 
  ySpeed = random(1, 6); 
}

void draw(){
  background(0); 
  
  x = x + xSpeed; 
  y = y + ySpeed; 
  
  fill(255); 
  ellipse(x, y, size, size); 

  if(frameCount % 120 == 0){
    xSpeed = random(-5, 5); 
    ySpeed = random(-5, 5); 
  }
}

```

### QUESTION 3: Conditionals part 2

currently, there is a 50% chance this sketch will draw the first two backgrounds in 
the bgColor array. Fix the sketch so that there is a 25% chance that each background color will be drawn when the mouse is clicked. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question3.gif?raw=true "")

```
color bgColors [] = new color[4]; 

float r; 
void setup(){
  size(600, 600); 
  
  for(int i = 0; i<4; i++){
    bgColors[i] = color(random(0,255), random(0,255), random(0,255)); 
  }
}

void draw(){
  int n; 

  if(int(r) == 0){
    n = 0; 
  }else if (int(r) == 1){
    n = 1; 
  }
  
  background(bgColors[n]); 
  text("back ground # : " + n, 100, 100); 
}

void mousePressed(){
  r = random(0,4); 
  ellipse(mouseX, mouseY, 50, 50); 
}
```

### QUESTION 4: Conditionals part 3

this sketch draws two rectangles on the side of the screen that change colors when the mouse is over them. change the sketch to have two more rectangles in the right side of the screen that behave in the same way when the mouse is over them.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/conditionals4.gif "")

```
void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  if (mouseX < width/2 && mouseY < height/2) {
    fill(255);
  } else {
    fill(229, 107, 107);
  }
  rect(0, 0, width/2, height/2);

  if (mouseX < width/2 && mouseY > height/2) {
    fill(255);
  } else {
    fill(107, 229, 107);
  }
  rect(0, height/2, width/2, height/2);
} 

```

### QUESTION 5 WAS REMOVED. STILL NO QUESTION 5!

### QUESTION 6: loops part 1

this sketch uses a while loop to draw 100 lines to the screen. replace the while loop with a for loop creating the same result.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/loops1.png "")

```
void setup() {
  size(600,600);
}

void draw() {
  int i = 0;
  while (i < 100) {
    line(i * 6, 0, i * 6, height);
    i++;
  }
}
```

### QUESTION 7: loops part 2

fix the nested for loop so it draws a 9x9 grid of ellipses, rather than the single, horizontal line it currently draws.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/loops2.png "")

```
void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 1; i < 10; i++) {
    for (int j = 1; i < 10; i++) {
      ellipse(i * 60, j * 60, 50, 50);
    }
  }
}
```

### QUESTION 8: map part 1

this sketch maps the fill color to the distance between the mouse position and the pixel position. Fix the sketch to include a distY variable and fix the mapping functions to match the gradient in the example gif. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question8.gif?raw=true "")

```
void setup(){
  size(600, 600); 
  
  noStroke(); 
}

void draw(){
  
  for(int i = 0; i< width; i+=10){
    for(int j = 0; j< height; j+=10){
      float distX = dist(i, 0, mouseX, 0); 

      
      float r = map(distX, 0, 255, 0, width); 
      float g = map(distY, 0, 255, 0, height); 
      
      fill(r, g, 175); 
      rect(i, j, 10, 10); 
    }
  }
}
```

### QUESTION 9: map part 2

this sketch serves as a basic kind of clock visualization, with rectangles moving around the screen to represent the second, minute, and hour hands, with the rotation of the rectangles  based on the map function. this clock has the seconds hands working, but not the minutes and hours. finish the variable assignment in the draw loop to get them working.

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question9.gif?raw=true "")

```
void setup() {
  size(600, 600);
}

void draw() {
  background(20);
  
  fill(255);
  
  //float hourPos = 
  //rect(hourPos, 
  
  //float minutePos = 
  //rect(minutePos, 
  
  float secondPos = map(second(), 0, 60, 0, 360);
  pushMatrix(); 
  translate(width/2, height/2); 
  rotate(radians(secondPos)); 
  rect(0, 0, width/60, 200);
  popMatrix(); 
}
```



### QUESTION 10: Random 

currently the sketch draws random points all over the canvas. adjust generateRandom parameters so points are only drawn within the two black rectangles. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question10.gif?raw=true "")

```
void setup() {
  size(600, 600);
  background(50);
  
  fill(0);
  rect(0, 0, width/2, width/2);
  rect(width/2, height/2, width/2, height/2); 
}

void draw() {
  generateRandom(0, width, 0, height); 
  generateRandom(0, width, 0, height); 
}

void generateRandom(float r1, float r2, float r3, float r4){
  float x = random(r1, r2);
  float y = random(r3, r4);
  stroke(255);
  point(x, y);
}
```

### QUESTION 11: scope part 1

this sketch currently draws a single, black ellipse at the center of the screen. Fix the sketch so the color of the ellipse increases to white and then get's reset to 0. 

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/scope1.gif "")

```
void setup(){
  size(600, 600); 
}

void draw(){
  background(255); 
  
  int fillColor = 0; 
  
  if(fillColor > 255){
    fillColor = 0; 
  }else{
    fillColor ++; 
  }
  
  fill(fillColor); 
  ellipse(width/2, height/ 2, 100, 100); 
}
```

### QUESTION 12: scope part 2

the for loop should be drawing 10 ellipses all with increasing size, but currently they are 
all the same size. fix the scope of the variables so the ellipse size increases. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question11.gif?raw=true "") 

```
void setup(){
  size(600, 600); 
}

void draw(){
  background(0); 
  
  for(int i = 0; i< width; i+=50){
    int size = 10; 
    ellipse(i+10, height/2, size, size); 
    size +=50; 
  }
}
```

### QUESTION 13: scope part 3 

fix the sketch so that it correctly uses the myAddition function to print the myAddition return of anotherNum declared in the setup() 

```
int num = 6; 

void setup() {
  int anotherNum = 15; 
  println(myAddition(anotherNum));
}

int myAddition(int myNum) {
  return 10 + num; 
}
```



### QUESTION 14: Transformations part 1

adjust the matrix transformations so that the small rectangle revolves around the large rectangle.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/translate3.gif "") 

```
float angle1 = 0;
float angle2 = 0;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(150);
  fill(40);
  stroke(220);
  
  angle1 += 1;
  angle2 -= 2;
  
  pushMatrix();
  translate(300, 300);
  rotate(radians(angle1));
  rect(0, 0, 100, 100);
  popMatrix();  
  
  pushMatrix();
  translate(150, 150);
  rotate(radians(angle2));
  rect(0, 0, 50, 50);
  popMatrix();

}
```

### QUESTION 15: translate part 2

fix the sketch so the rectangle is drawn at the mouse position and rotates based on the mouseX position 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question15.gif?raw=true "") 

```
void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  
  pushMatrix(); 
  rotate(radians(mouseX)); 
  translate(mouseX, mouseY); 
  
  rect(mouseX, mouseY, 100, 50); 
  popMatrix(); 
}
```

### QUESTION 16: arrays part 1

this sketch uses a single array of floats to store values used in a drawing function. change the sketch so that it instantiates an array of 10 ellipses instead, drawn on a diagonal and spaced evenly apart. you will need to change the way the values are given to the array. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question16.png?raw=true "") 

```
float[] xPos = { 100, 200, 300, 400, 500 };
int size = 60; 

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  for (int i = 0; i < xPos.length; i++) {
    ellipse(xPos[i], 200, size, size);
  }
}
```

### QUESTION 17: arrays part 3

this sketch uses a 2d array to store colors that will be used to draw ellipses in a grid. change the draw loop so that it draws evenly spaced ellipses across the screen, and use your boolean to change the ellipse fill color to a random color one time when the ellipse is first clicked. 

![](https://github.com/snavc270/code1_Fall2018/blob/master/MIDTERM_2/question17.gif?raw=true "") 

```
int size = 60; 
int num; 
boolean [][] clicked; 
color [][] c; 

void setup(){
  size (600, 600); 
  background(0); 
  noStroke(); 
  smooth(); 
  
  num = width/size; 
  
  clicked = new boolean[num][num]; 
  c = new color[num][num];
  
  for(int i = 0; i< num; i++){
    for(int j = 0; j<num; j ++){
      clicked[i][j] = false; 
      c[i][j] = color(255); 
    }
  } 
}

void draw(){
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
    
      if(clicked[i][j] == false){
        if(mousePressed){
          
           if(dist(mouseX, mouseY, i*size + size/2, j*size+ size/2)<size/2){
             
           }
        }
      }
       fill(c[i][j]); 
       ellipse(0, 0, size, size);  
    }
  }
}
```

