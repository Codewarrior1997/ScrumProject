class Enemy
{
  // Stores the location and the speed of the enemies
  PVector location;
  PVector velocity;

  Enemy()
  {
    // Gives the enemy a random location when they spawn, 10 pixels away from the edges
    location = new PVector(random(width - 10), random(height - 10));
    velocity = new PVector(0, 0);
  }

  // Makes the enemies move randomly
  void decideMovement()
  {
    velocity.normalize();
    velocity.x *= 5;
    velocity.y *= 5;
    location.add(velocity);
    if (random(10) > 9.5)
    {
      float a = random(1);
      if (a > 0.55)
      {
        a = random(1);
        if (a > 0.55)
        {
          velocity.y = random(5) * -1;
        } else 
        {
          velocity.y = random(5) * 1;
        }
        a = random(1);
        if (a > 0.55)
        {
          velocity.x = random(5) * -1;
        } else
        {
          velocity.x = random(5) * 1;
        }
      }
    }
  }

  // Necessary for the bounce() method to make sure enemies don't go out of bounds
  boolean allowXBounce = true;
  boolean allowYBounce = true;
  
  // Makes sure the enemies don't go out of bounds
  void bounce()
  {
    if (((location.x > width) || (location.x < 0)) && (allowXBounce))
    {
      velocity.x = velocity.x * -1;
      allowXBounce = false;
      allowYBounce = true;
    } else
    {
      allowXBounce = true;
    }

    if (((location.y > height) || (location.y < 0)) && (allowYBounce))
    {
      velocity.y = velocity.y * -1;
      allowXBounce = true;
      allowYBounce = false;
    } else
    {
      allowYBounce = true;
    }
  }

  // Checks for collision between the player and the enemy using collision for axis-aligned bounding boxes 
  void checkEnemyPlayerCollision()
  {
    if (player.location.x + 30 > this.location.x && player.location.x < this.location.x + 20 && player.location.y + 30 > this.location.y && player.location.y < this.location.y + 20)
    {
      background(0, 0, 0);
    }
  }

  // Used to display the enemy
  void display()
  {
    pushStyle();
    fill(255, 204, 0);
    rect(this.location.x, this.location.y, 20, 20);
    popStyle();
  }
}
