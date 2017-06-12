
void setup() {
  size(displayWidth, displayHeight);
  if(reset){
    resetGame();
  }
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
}

void drawGameScreen() {
  // Draw background
  background(bgColor);
  drawBall();
  drawPaddles();
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Update Ball and Paddle Positions
  updateBallPosition();
  updatePaddlePositions();
  // Draw Ball and Paddles
  //leftLose();
  //rightLose();
  displayScores();
  if(leftScore==10){
    text("Left Wins!",150,200);
    text("Right Lose:(",450,200);
    resetGame();
  }
  else if(rightScore==10){
    text("Right Wins!",450,200);
    text("Left Lose:(",50,200);
    resetGame();
  }
  pauseGame();
  // Display Scores
}

void drawBall() {
  // Display Ball in correct position
  fill(ballColor);
  ellipse(ballX,ballY,2*ballRadius,2*ballRadius);
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
  rect(0,leftPaddle,paddleWidth,paddleLength,paddleRadii);
  rect(displayWidth-paddleWidth,rightPaddle,paddleWidth,paddleLength,paddleRadii);
}

void resetGame(){
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  leftPaddle=displayHeight/3; 
  rightPaddle=displayHeight/3;
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
  ballVx = BALL_VELOCITY;
  ballVy = 0;
  leftScore=0;
  rightScore=0;
}

void displayScores() {
  text(leftScore,200,150);
  text(rightScore, 600,150);
  // Display Left and Right player Scores
}
void pauseGame(){
if(pause){
ballX=displayWidth/2;
ballY=displayHeight/2;
leftPaddle=displayHeight/3; 
rightPaddle=displayHeight/3;
ballVx=BALL_VELOCITY;
ballVy=0;
}
}
void resetBall(){
ballX=displayWidth/2;
ballY=displayHeight/2;
ballVx=BALL_VELOCITY;
ballVy=0;
}