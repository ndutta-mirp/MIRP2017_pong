// Display Size
int displayWidth=800, displayHeight=500;

// Velocity Cnstants
float BALL_VELOCITY = 10; //This is the MAX speed of the ball.
float PADDLE_VELOCITY = 10;

// Background Color
int bgColor = 50;

// Ball parameters
float ballX=displayWidth/2, ballY=displayHeight/2;
float ballVx=BALL_VELOCITY, ballVy=BALL_VELOCITY; // ballVx is always BALL_VELOCTY or -BALL_VELOCITY; ballVy varies.
float ballRadius = 10;
color ballColor = color(150,180,50);

// Y - position of Left and Right paddles
float leftPaddle=displayHeight/3, rightPaddle=displayHeight/3;
// Paddle Dimensions
float paddleLength = 100, paddleWidth = 20;
color paddleColor = color(255,255,255);
float paddleRadii=7;

// Score Variables
int leftScore, rightScore;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';

// Controls for the Right Paddle
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 's';

// Keyoard Handling Booleans
boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;

// setting game state
int gamestate=0;
