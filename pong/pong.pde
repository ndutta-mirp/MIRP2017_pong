void setup() {
  size(displayWidth, displayHeight);
  resetGame();
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
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}