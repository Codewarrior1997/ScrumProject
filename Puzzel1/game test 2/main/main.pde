Startscherm startscherm;
PImage img;
Boolean down = false;
String state;

void setup()
{
  noStroke();
  size(1280, 720);
  frameRate(60);
  img = loadImage("nuclear_background.png");
  startscherm = new Startscherm();
}

ArrayList<Enemy> enemies = new ArrayList<Enemy>();
ArrayList<Item> items = new ArrayList<Item>();

Player player = new Player();

public int level = 1;
void draw()
{

  if (state == "start") {
    background(img);

    player.move();
    player.display();

    //for (int amount = 0; amount < 10; amount++)
    if (enemies.size() < 35)
    {
      if (random(100) > 95)
      {
        enemies.add(new Enemy());
      }
    }
    for (Enemy enemy : enemies)
    {
      enemy.display();
      enemy.decideMovement();
      enemy.bounce();
      enemy.checkEnemyPlayerCollision();
    }

    // Spawn radioactive drops  
    if (level == 1)
    {
      if (items.size() < 1)
      {
        if (random(100) > 95)
        {
          items.add(new Item());
        }
      }
    }
    for (Item item : items)
    {
      item.drawItem();
    }
    //for (int i = enemies.size() - 1; i >= 0; i--)
    //{
    //  Enemy enemy = enemies.get(i);
    //  if (enemy.lifeTime > 1000)
    //  {
    //    enemies.remove(i);
    //  }
    //}
  } else if (state == "exit")
  {
    exit();
  } else {
    startscherm.drawMenu();
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
