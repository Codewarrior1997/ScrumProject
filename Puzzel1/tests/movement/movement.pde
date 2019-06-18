ArrayList<Ball> balls;

void setup()
{
  size(960, 640);
  frameRate(100);
  
  //balls = new ArrayList<Ball>();
  
  //for (int i = 0; i < 10; i++)
  //{
  //  balls.add(new Ball(random(1), random(1), random(1), random(1)));
  //}
}

float x, y;

Ball ball = new Ball(470, 320, 12.0, 1.);
Ball ball2 = new Ball(random(5),  random(5), random(5), random(5));

void draw()
{
  //background(255);
  rect(ball2.location.x - 10, ball2.location.y - 20, 20, 20);
  ball2.move();
  ball.move();
}
