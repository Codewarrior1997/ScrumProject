void setup()
{
  size(1920, 1080);
  frameRate(100);
}

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

Player player = new Player();

void draw()
{
  background(255);
  
  player.move();
  player.display();
  
  
  //for (int amount = 0; amount < 10; amount++)
  if(enemies.size() < 35)
  {
    if (random(100) > 95)
    {
      enemies.add(new Enemy());
    }
  }
  for (Enemy enemy : enemies)
  {
    enemy.lifeTime++;
    enemy.display();
    enemy.decideMovement();
    enemy.bounce();
    enemy.checkCollision();
  }
  //for (int i = enemies.size() - 1; i >= 0; i--)
  //{
  //  Enemy enemy = enemies.get(i);
  //  if (enemy.lifeTime > 1000)
  //  {
  //    enemies.remove(i);
  //  }
  //}
}
