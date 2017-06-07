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
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Update Ball and Paddle Positions
  
  // Draw Ball and Paddles
  // Display Scores
}

void drawBall() {
  // Display Ball in correct position
  ellipse(width/2,height/2,2*ballRadius,2*ballRadius);
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}