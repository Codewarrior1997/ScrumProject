class Player
{
  public PVector location;
  PVector velocity;

  Player()
  {
    location = new PVector(300, 300);
    velocity = new PVector(0, 0);
  }

  void move()
  {
    location.add(velocity);
    velocity.y = 0;
    velocity.x = 0;
    if (keyPressed)
    {
      // Upwards movement
      if (key == 'w' || key == 'W')
      {
        velocity.y = -5;
      }

      // Left movement 
      if (key == 'a' || key == 'A')
      {
        velocity.x = -5;
      }

      // Downwards movement
      if (key == 's' || key == 'S')
      {
        velocity.y = 5;
      }

      // Right movement
      if (key == 'd' || key == 'D')
      {
        velocity.x = 5;
      }
    }
  }
  void display()
  {
    rect(location.x, location.y, 30, 30);
  }
}
