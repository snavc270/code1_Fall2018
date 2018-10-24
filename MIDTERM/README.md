### QUESTION 1: Syntax errors

```
// Fix all the syntax errors so the code runs.

void setup() {
  // we'll create a counter variable to count the frames
  int counter = 0:

  String welcomeMsg = "welcome to the first midterm question!"
  
  bool isCodeGreat = true;
  
  println(welcomeMsg);
  
  println('now we'll do a loop and print the iterating value!');
  for (int i = 0; i++; i < 3) 
    println("this is loop number " i);
  }
  flaot floatArray = new float[100];
  println("there are " + floatArray.size() + " positions in floatArray")
}
void draw() {
  // we'll increment counter every frame until 60, then reset
  if (0 < counter < 60) {
    counter+;
  } else {
    counter = 0;
  } 
```


### QUESTION 2: Conditionals part 1

add a conditional that makes the ellipse grow only until the diameter reaches the width of the canvas, then makes it shrink until reaching 0, then growing again, back and forth. 

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/conditionals1.gif "")

```
float d = 100;
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, d, d);

  d += incr;  

}

```

### QUESTION 3: Conditionals part 2

in this sketch there is currently a 50% chance that the drawn ellipse will move 10 pixels to the right every frame, and a 50% chance that it will move to 10 pixels to the left. change the sketch so there is a 25% chance that it will move left, 25% chance that it will move right, 25% chance up, and 25% chance down.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/conditionals2.gif "")

```
float xPos;
float yPos;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  frameRate(10);
}

void draw() {
  background(50);
  ellipse(xPos, yPos, 30, 30);

  float r = random(2);

  if (int(r) == 0) {
    xPos += 10;
  } else {
    xPos -= 10;
  }
} 
```

### QUESTION 4: Conditionals part 3

this sketch has the ellipse change colors whenever the mouse button is pressed. change the sketch so that the ellipse only changes colors when the mouse is pressed inside the ellipse.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/conditionals3.gif "")

```
void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  if (mousePressed) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(width/2, height/2, 200, 200);
}
```

### QUESTION 5 WAS REMOVED. THERE IS NO QUESTION 5!

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

fix the nested for loop so it draws a 9x9 grid of ellipses, rather than the single diagonal line it currently draws.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/loops2.png "")

```
void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      ellipse(i * 60, i * 60, 50, 50);
    }
  }
}
```

### QUESTION 8: map part 1

this sketch uses only the setup function to draw points at every pixel to the screen in a gradient in the x and y dimensions. the color should be smoothly blended in all directions to look like the target image, but the current mapping result seems to be off (its mostly yellow). fix it to be an even gradient across the width and height of the canvas.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/map1.png "")

```
void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, 255, 0, width);
      float g = map(j, 0, 255, 0, height);
      stroke(r, g, 175);
      point(i, j);
    }
  }
}
```

### QUESTION 9: map part 2

this sketch serves as a basic kind of clock visualization, with rectangles moving across the screen to represent the second, minute, and hour hands. this clock has the seconds hands working, but not the minutes and hours. finish the variable assignment in the draw loop to get them working.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/map2.gif "")

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
  
  float secondPos = map(second(), 0, 60, 0, width);
  rect(secondPos, 400, width/60, 600);
}
```



### QUESTION 10: Random 

currently the sketch draws random white points all over the canvas. change the values being given to x and y so that the white points are only drawn inside the black rectangle.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/random1.gif "")

```
void setup() {
  size(600, 600);
  background(50);
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 400, 200);
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  stroke(255);
  point(x, y);
}
```

### QUESTION 11: scope part 1

this sketch currently draws an ellipse at the middle of the screen. the draw loop increments the variable used to store the y position of the ellipse, but the position doesn't change. fix the variable scope of yPosition so that it increases every frame until reaching the height of the screen. 

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/scope1.gif "")

```
void setup() {
  size(600, 600);
}

void draw() {
  int yPosition = width/2;
  ellipse(width/2, yPosition, 100, 100);

  if (yPosition > height) {
    yPosition = 0;
  } else {
    yPosition+=10;
  }
}
```

### QUESTION 12: scope part 2

the for loop looks like it should be drawing 10 rectangles to the screen, but it's only drawing one. fix the scope of the x integer so that all 10 rectangles are drawn to the screen.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/scope2.png "") 

```
void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 0; i < 10; i++) {
    int x = 15;
    rect(x, 150, 30, 300);
    x += 60;
  }
}
```

### QUESTION 13: scope part 3 

fix the sketch so that it correctly uses the myFunc function to print the anotherStr String declared in setup(). 

```
String str = "I am a string!";

void setup() {
  String anotherStr = "I want to use the myFunc function to print this String!";
  myFunc(anotherStr);
}

void myFunc(String myStr) {
  println(str);
}
```



### QUESTION 14: Translate part 1

this sketch draws a pattern by moving a rotating line from the top to bottom of the screen, and then over to the right, then repeating. change the sketch so that it draws from left to right, then down, instead. change either the translate function or the conditional to do this.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/translate1.gif "") 

```
float x = 0; 
float y = -100;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + x));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
  y+=5;
  
  if (y > height + 100) {
    y = -100;
    x += 70;
  }
}
```

### QUESTION 15: translate part 2

fix the sketch so that the rectangle is drawn at the position of the mouse. 

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/translate2.gif "") 

```
void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  translate(mouseX, mouseY);
  noStroke();
  rect(mouseX, mouseY, 100, 100);
}
```

### QUESTION 16: arrays part 1

this sketch uses a single array of floats to store values used in a drawing function. change the sketch so that it instantiates an array of 100 ellipses instead. you will need to change the way the values are given to the array. map the values in the array so that when drawn, the ellipses will be evenly spaced moving down the screen from the top to the bottom.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/arrays1.png "") 

```
float[] pos = { 100, 200, 300, 400, 500 };

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    ellipse(width/2, pos[i], 50, 50);
  }
}
```

### QUESTION 17: arrays part 3

this sketch uses a 2d array to store colors that will be used to draw rectangles in a grid. change the draw loop so that it draws evenly spaced rectangles across the screen, and add a conditional to make sure that once a color turns white, it returns back to black as seen in the example gif. 

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/arrays3.gif "") 

```
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
      greyColors[i][j]+=1;
      fill(greyColors[i][j]);
      rect(0, 0, width/gridW, height/gridH);
    }
  }
}
```

