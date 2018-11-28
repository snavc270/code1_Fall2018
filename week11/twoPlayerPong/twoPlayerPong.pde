float d = 25; 
float ballX, ballY;
float speedX, speedY; 
int player1Score, player2Score; 
boolean player1MoveUp, player1MoveDown, player2MoveUp, player2MoveDown;  
boolean gameOver = false; 

Paddle player1, player2; 

void setup(){
  size(1000, 600); 
  
  textSize(24); 
  player1 = new Paddle(30, 100); 
  player2 = new Paddle(width-30, 100); 
  
  reset(); 
}

void draw(){
  background(0); 
  
  if(!gameOver){
    fill(0, 255, 0); 
    ellipse(ballX, ballY, d, d); 
    
    fill(255);
    text("player1: " + player1Score, width*.2, height*.10); 
    text("player2: " + player2Score, width*.7, height*.10);  
    
    paddleMovement(); 
    
    updateBall(); 
    checkCollision(); 
    
    player1.display(); 
    player2.display(); 
  }
  
  checkWinner(); 
}

void keyPressed(){
    if(key == CODED){
      if(keyCode == UP){
        player1MoveUp = true; 
      } else if(keyCode == DOWN){
        player1MoveDown = true; 
      }
    }
    
    if(key == 'w' || key == 'W'){
      player2MoveUp = true; 
    } else if(key == 's' || key == 'S'){
      player2MoveDown = true; 
    }
}

void keyReleased(){
    if(key == CODED){
      if(keyCode == UP){
        player1MoveUp = false; 
      } else if(keyCode == DOWN){
        player1MoveDown = false; 
      }
    }
    
    if(key == 'w' || key == 'W'){
      player2MoveUp = false; 
    } else if(key == 's' || key == 'S'){
      player2MoveDown = false; 
    }
}

void paddleMovement(){
  if(player1MoveDown){
    player1.moveDown(); 
  }
  if(player1MoveUp){
    player1.moveUp(); 
  }
  if(player2MoveDown){
    player2.moveDown(); 
  }
  if(player2MoveUp){
    player2.moveUp(); 
  }
}

void updateBall(){
  ballX += speedX; 
  ballY += speedY; 
}

void reset(){
  ballX = width/2; 
  ballY = height/2; 
  
  speedX = random(2, 4); 
  speedY = random(2, 4); 
}

void checkCollision(){
  //if my ball gets to the right boundary of the screen
  //increase my player 1 score
  //resetting the ball to the middle of the screen
  if(ballX >= width-d/2){
    player1Score += 1; 
    reset();
  }
  
  //if my ball gets to the right boundary of the screen
  //increase my player 2 score
  //resetting the ball to the middle of the screen
  if(ballX <= d/2){
    player2Score += 1; 
    reset();
  }
  
  //checking the top and bottom boundaries of our screen
  //reversing the y speed if it hits top or bottom 
  if(ballY >= height-d/2 || ballY <= d/2){
    speedY *= -1.1; 
  }
  
  //checking if ball hits my player 2 paddle
  if(ballX >= player2.xPos - d/2 && ballY>= (player2.yPos-player2.rectSize/2) && 
    ballY<= (player2.yPos+player2.rectSize/2)){
    speedX *= -1.1; 
    speedY *= 1.1; 
  }
  
  if(ballX<= player1.xPos + d/2 && ballY>= (player1.yPos-player1.rectSize/2) && 
    ballY<= (player1.yPos+player2.rectSize/2)){
      speedX *= -1.1; 
      speedY *= 1.1; 
  }
}

void checkWinner(){
  if(player1Score >= 10){
    text("Player 1 Wins!!!", width*.45, height/2); 
    gameOver = true; 
  }
  
  if(player2Score >= 10){
    text("Player 2 Wins!!!", width*.45, height/2); 
    gameOver = true; 
  }
}