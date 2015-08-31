float squareX = 500;
float squareY = 200;
float squareVelocityX = 0;
float squareVelocityY = 0;
float acceleration = 1;
int dKey = 0;
int aKey = 0;
float gravity = 0.3;
boolean onGround = false;
void setup()
{
  size(1000,400);
  frameRate(60);
  rectMode(CENTER);
}
void draw()
{
  stroke(255);
  line(0,350,1000,350);
  noStroke();
  fill((random(255)),random(255),random(255));
  rect(squareX,squareY,10,10);
  squareVelocityX = acceleration*(dKey-aKey);
  squareY += squareVelocityY;
  squareX += squareVelocityX;
  if (squareY < 345)
  {
    onGround = false;
  }
  else
  {
    onGround = true;
  }
  if (onGround == true)
  {
    squareY = 345;
    squareVelocityY = 0;
    gravity = 0;
  }
  else
  {
    gravity = 0.3;
  }
  squareVelocityY += gravity;
  if (squareX > 1050)
  {
    squareX = -50;
  }
  if (squareX < -50)
  {
    squareX = 1050;
  }
  if((dKey == 8 && aKey == 0) || (aKey == 8 && dKey == 0))
  {
    if(acceleration < 3.0)
    {
      acceleration += 0.05;
    }
  }
}
void keyReleased()
{
  if(key == 'd')
  {
    dKey = 0;
    acceleration = 1;
  }
  if(key == 'a')
  {
    aKey = 0;
    acceleration = 1;
  }
  if(key == 'w')
  {
    if (squareVelocityY < 0)
    {
      squareVelocityY = 0;
    }
  }
}
void keyPressed()
{
  if(key == 'w')
  {
    if (onGround != false)
    {
      squareVelocityY = -12;
    }
  }
  if(key == 'd')
  {
    dKey = 8;
  }
  if(key == 'a')
  {
    aKey = 8;
  }
}
void mousePressed()
{
  background(random(255),random(255),random(255));
}

