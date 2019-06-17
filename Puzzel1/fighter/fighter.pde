ArrayList<Bullet> bullets;
PImage img;
Startscherm startscherm;
AtomicWaste waste1;

Boolean down = false;
String state;

void setup()
{
  size(1280, 720);
  bullets = new ArrayList<Bullet>();
  frameRate(60);
  img = loadImage("nuclear_background.png");
  startscherm = new Startscherm();
  waste1 = new AtomicWaste(30, 300);
}

Fighter fighter = new Fighter();

void draw()
{

  if (state == "start") {
    background(img);
    fighter.drawFighter();
    waste1.drawAtomicWaste();
  } else if (state == "exit")
  {
    exit();
  } else {
    startscherm.drawMenu();
  }
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
    pushStyle();
    fill(255, 0, 0);
    rect(xPos, yPos, 20, 20);
    popStyle();

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

  float getXPos() {
    return xPos;
  }
  
  float getYPos() {
    return yPos;
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

void mousePressed()
{
  if (startscherm.startOrExit() == "start") {
    if (down == false)
      state = "start";
    down = true;
  } else if (startscherm.startOrExit() == "exit") {
    if (down == false) {
      state = "exit";
    }
  }
}
