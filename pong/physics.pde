void updateBallVelocity() {
  resolveCollisions();
     //ballCollisions();
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)
  if(left_up)
  leftPaddle-=PADDLE_VELOCITY;
  if(left_down)
  leftPaddle+=PADDLE_VELOCITY;
  // Make sure the paddles don't leave the screen
  if(leftPaddle<0)
  leftPaddle=0;
  if(leftPaddle>(displayHeight-paddleLength))
  leftPaddle=(displayHeight-paddleLength); 
  if(right_up)
  rightPaddle-=PADDLE_VELOCITY;
  if(right_down)
  rightPaddle+=PADDLE_VELOCITY;
  if(rightPaddle<0)
  rightPaddle=0;
  if(rightPaddle>(displayHeight-paddleLength))
  rightPaddle=(displayHeight-paddleLength);
}
void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
    if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
     ballVy = -ballVy;
  }
   if (ballY <ballRadius){
    ballY =ballRadius;
     ballVy = -ballVy;
     
  }
  /*if (ballX > displayWidth-ballRadius){
    ballX = displayWidth-ballRadius;
     ballVx *= -1;
  }*/
  /*if (ballX < ballRadius){
    ballX = ballRadius;
    ballVx *=-1;
  }*/
   if(ballX < paddleWidth+ballRadius){
     if(leftPaddle < ballY && ballY< (paddleLength+leftPaddle)){
       println("Left Paddle Hit");
       ballX = paddleWidth+ballRadius;
       ballVx*=-1;
       float paddleMid = (leftPaddle+paddleLength/2);
       ballVy=BALL_VELOCITY*(ballY-paddleMid)/(paddleLength/2);
       println(ballY-paddleMid, ballVy);
       }
     }
 if(ballX > (displayWidth-(paddleWidth+ballRadius))){
     if(rightPaddle < ballY && ballY< (paddleLength+rightPaddle)){
       ballX = displayWidth-(paddleWidth+ballRadius);
       println("Right Paddle Hit");
       ballVx*=-1;
       float paddleMid1= (rightPaddle+paddleLength/2);
       ballVy=BALL_VELOCITY*(ballY-paddleMid1)/(paddleLength/2);
       println(ballVy);
     }
  }
  // Resolve Collisions with all other walls.
}
//void ballCollisions(){
 // ballVy=BALL_VELOCITY*(ballY-leftPaddle)/(paddleLength/2);
//}