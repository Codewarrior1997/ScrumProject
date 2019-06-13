ArrayList<Bullet> bullets;
PImage img;

void setup()
{
  size(1280, 720);
  bullets = new ArrayList<Bullet>();
  frameRate(60);
  img = loadImage("nuclear_background.png");
}

Fighter fighter = new Fighter();

void draw()
{
  background(img);

  fighter.drawFighter();
}

class Fighter
{
  float xPos, yPos;

  public Fighter()
  {
    xPos = 50;
    yPos = 50;
  }

  public void drawFighter()
  {
    fill(255);
    rect(xPos, yPos, 20, 20);

    for (Bullet b : bullets)
    {
      b.drawBullet();
    }

    if (keyPressed)
    {
      if (key == 'w' || key == 'W')
      {
        yPos -= 2;
      }
      if (key == 'a' || key == 'A')
      {
        xPos -= 2;
      }
      if (key == 's' || key == 'S')
      {
        yPos += 2;
      }
      if (key == 'd' || key == 'D')
      {
        xPos += 2;
      }
      if (key == 'c' || key == 'C')
      {
        fighter.fireGun();
      }
    }
  }

  public void fireGun()
  {
    bullets.add(new Bullet(xPos, yPos));
  }
}

class Bullet
{
  float xPos;
  float yPos;

  public Bullet(float xPos, float yPos)
  {
    this.xPos = xPos + 7;
    this.yPos = yPos;
  }
  public void drawBullet()
  {
    yPos -= 7;
    rect(xPos, yPos, 6, 6);
  }
}
