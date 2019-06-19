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

int score = 0;
int level = 1;
int pickedUp = 0;
int itemsSpawned = 0;
int frames = 0;
int seconds = 0;
int minutes = 0;
int enemiesSpawned = 0;
int finalScore;
int deaths;

boolean wonGame = false;
boolean calculatedScore = false;


Player player = new Player();

void draw()
{
  if (state == "start") {

    countFrames();
    background(img);

    // Draw item
    for (Item item : items)
    {
      item.drawItem();
      item.CheckItemPlayerCollision();
    }


    player.move();
    player.display();
    player.wrapAround();

    // Set level according to score
    if (score == 50)
    {
      level = 2;
    }
    if (score == 120)
    {
      level = 3;
    }
    if (score == 220)
    {
      wonGame = true;

      // Calculates the final score
      if (!calculatedScore)
      {
        finalScore = (10000 - seconds) - (((minutes * 60) - seconds)*2) - (deaths * 200);
      }

      // Text that displays when the player wins the game. The string of numbers
      // seperated by dashes is a substitution cipher where each letter of the alphabet is 
      // represented by a number which corresponds to that letter's position in the alphabet.
      // once deciphered it reads "blyad", which is the password needed to enter the next puzzle
      pushStyle();
      fill(0);
      text("GAME CLEAR", width / 2 - 30, height / 2);
      text("FINAL SCORE:", width / 2 - 30, height / 2 + 30);
      text(finalScore, width / 2 - 30, height / 2 + 70);
      text("2-12-25-1-20", width / 2 - 50, height / 2 + 110);
      popStyle();




      for (Enemy enemy : enemies)
      {
        enemy.isActive = false;
      }
    }

    // Spawn items
    if (level == 1)
    {
      if (score == 0 && itemsSpawned < 5)
      {
        items.add(new Item());
        itemsSpawned++;
      }
    }

    if (level == 2)
    {
      if (score == 50 && itemsSpawned <  7)
      {
        items.add(new Item());
        itemsSpawned++;
      }
    }
    if (level == 3)
    {
      if (score == 120 && itemsSpawned <  10)
      {
        items.add(new Item());
        itemsSpawned++;
      }
    }

    // Spawn ememies
    //for (int amount = 0; amount < 10; amount++)
    if (level == 1)
    {
      if (enemiesSpawned < 7)
      {
        enemies.add(new Enemy());
        enemiesSpawned++;
      }
    }
    if (level == 2)
    {
      if (enemiesSpawned < 7)
      {
        enemies.add(new Enemy());
        enemiesSpawned++;
      }
    }
    if (level == 3)
    {
      if (enemiesSpawned < 12)
      {
        enemies.add(new Enemy());
        enemiesSpawned++;
      }
    }
    for (Enemy enemy : enemies)
    {
      enemy.display();
      enemy.decideMovement();
      enemy.bounce();

      enemy.checkEnemyPlayerCollision();
      if (level == 1)
      {
        enemy.velocityValue = 3;
      }
      if (level == 2)
      {
        enemy.velocityValue = 5;
      }
    }

    pushStyle();
    fill(0);
    text("Points: " + score, 10, 30);
    text("Level:" + level, 10, 70);
    text("Deaths:" + deaths, 10, 110);
    text(minutes + ":" + seconds, width - 80, 30);
    popStyle();


    //for (int i = enemies.size() - 1; i >= 0; i--)
    //{
    //  Enemy enemy = enemies.get(i);
    //  if (enemy.isTouched)
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

void countFrames()
{
  if (!wonGame)
  {
    frames++;
    if (frames >= frameRate)
    {
      frames = 0;
      seconds++;
      if (seconds >= 60)
      {
        minutes++;
        seconds = 0;
      }
    }
  }
}

void enemyDeactivate()
{
  for (Enemy enemy : enemies)
  {
    enemy.isActive = false;
    if (enemiesSpawned > 0)
    {
      enemiesSpawned--;
    }
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
