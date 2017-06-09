void leftLose() {
  if(ballX < ballRadius){
  rightScore+=1;
  resetGame();
  delay(1000);
  }
}

void rightLose() {
  if(ballX > displayWidth-ballRadius){
  leftScore+=1;
  resetGame();
  delay(1000);
  }
}
 