class Player
{
  // Stores the location and the speed of the player
  PVector location;
  PVector velocity;

  // Constructor
  Player()
  {
    // Sets the default location of the player
    location = new PVector(300, 300);
    velocity = new PVector(0, 0);
  }

  // Player controls with WASD keys
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
    // Draw the rectangle at the player position
    pushStyle();
    fill(0, 0, 0);
    rect(location.x, location.y, 30, 30);
    popStyle();
  }
  
  void wrapAround()
  {
    if (player.location.x > width + 1)
    {
      player.location.x = 0;
    }
    if (player.location.x < 0)
    {
      player.location.x = width;
    }
    if (player.location.y > height + 1)
    {
      player.location.y = 0;
    }
    if (player.location.y < 0)
    {
      player.location.y = height +1;
    }
  }
}