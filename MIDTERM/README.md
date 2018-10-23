### syntax errors

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

### semantic errors

note this sketch includes a folder called "daata" with a mismatched png.

```
// QUESTION 2 - 
// Fix all the semantic errors so the code runs as expected

void setup() {
  size(-100, -100);
  
  int aNumber = 1.1;
  float[] bunchONumbers = {10, true, "hello!"};

  for (int i = 0; i <= bunchONumbers.length; i++) {
    println(bunchONumbers[i]);
  }
  
  boolean[] bunchOBools = new boolean[10];
  
  for (int i = 10; i > 0; i++) {
    bunchOBools[i] = true;
  }

  PImage img;
  img = loadImage("doge.png");

  image(img, 0, 0, width, height);
}
```

### design errors - mouse trail

```
// Make the lines follow the mouse as a trail behind the mouse position correctly
// The position is off and so is the assignment

float[] xPositions = new float[100];
float[] yPositions = new float[100];

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i = 0; i < xPositions.length - 1; i++) {
    line(xPositions[i], yPositions[i], xPositions[i+1], yPositions[i+1]);
  }

  for (int i = xPositions.length - 1; i > 0; i--) {
    xPositions[i] = xPositions[i-1];
    yPositions[i] = yPositions[i-1];
  }

  xPositions[0] = mouseY;
  yPositions[0] = mouseX;
}
```

![1](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/1.gif "1")

### design errors - grid 

```
// this is currently drawing an angled line of rectangles - it should draw a centered grid of squares.

void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      rect(i * 50, i * 25, 25, 25);
    }
  }
}
```
![2](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/2.png "2")

### design errors - button

```
// pressing the button should change the background color. figure out why it doesn't and fix it

int buttonX = 100;
int buttonY = 100;
int buttonW = 100;
int buttonH = 100;

void setup() {
  size(300, 300);
}

void draw() {
  background(40);

  if (mousePressed) {
    if (mouseX < buttonX && mouseX > buttonW) {
      if (mouseY < buttonY && mouseY > buttonH) {
        background(255);
      }
    }
  }
  
    
  rect(buttonX, buttonY, buttonW, buttonH);

}
```

![3](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/3.gif "3")

### design errors - clock 

```
// map() the values properly so that the clock hands are displayed at the correct angle

int seconds;
int minutes;
int hours;

void setup() {
  size(400,400);
}

void draw() {
  background(255);
  
  fill(220);
  noStroke();
  ellipse(width/2, height/2, 230, 230);
  
  // these are the values that need mapping
  seconds = second();
  minutes = minute();
  hours = hour();
   
  stroke(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(seconds));
  strokeWeight(1);
  line(0, 0, 0, -100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(minutes));
  strokeWeight(2);
  line(0, 0, 0, -80);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(hours));
  strokeWeight(3);
  line(0, 0, 0, -60);
  popMatrix();
}
```

![4](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/4.gif "4")


### design errors - overflow

```
// currently this sketch has an array of Walker type objects that get instantiated individually when the mouse is pressed.
// because the array is of limited length, eventually it overflows if the mouse button is pushed long enough.
// fix the code to make sure that the overflow doesn't happen. 
// you could do this via logic with the walker counter, or using an ArrayList instead of an array.

Walker[] walkers = new Walker[100];

int whichWalker = 0;

void setup() {
  size(600,600);
  background(255);
}

void draw() {
  for (int i = 0; i < whichWalker; i++) {
    walkers[i].update();
    walkers[i].display();
  }

  if (mousePressed) {
    walkers[whichWalker] = new Walker(mouseX, mouseY);
    whichWalker++;
  }
}


class Walker {
  float x;
  float y;
  float moveSpeed;
  float alphaColor;

  Walker(float _x, float _y) {
    x = _x;
    y = _y;
    moveSpeed = random(5);
    alphaColor = 255;
  }
  
  void update() {
    alphaColor -= 0.1;
    int r = int(random(4));
    switch (r) {
      case 0:
        x += moveSpeed;
        break;
      case 1:
        x -= moveSpeed;
        break;
      case 2:
        y += moveSpeed;
        break;
      case 3:
        y -= moveSpeed;
        break;
      default:
        break;
    }
  }
  
  void display() {
    stroke(0, alphaColor);
    point(x,y);
  }
}
```

![5](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/5.gif "5")

### design errors - modulo

```
// this code uses the modulo in a clever way to create a loop that you might ordinarily use an if statement to handle.
// fix the code so it returns when reaching the width of the canvas.

float position;

void setup() {
  size(600,600);
}

void draw() {
  background(180);
  ellipse(position, height/2, 100, 100);
  
  position = (position + 5) % 100;
}
```

![6](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/6.gif "6")

### putting it all together - pong

```
// put together a skeleton Pong game.

// create a bouncing ball that starts in the middle of the screen 
// either use a class or independent variables, it doesn't matter
// make it bounce only on the top and bottom walls
// create two paddles. this can also be a class or not
// have key presses control the up and down movement of the paddles independently
// make the ball reverse x direction when it touches the paddles
// return the ball to the middle of the screen with a random position when it goes off screen
// keep score for the two players

void setup() {
  
}

void draw() {
  
}
```
