class Enemy
{
  PVector location;
  PVector velocity;

  Enemy()
  {
    location = new PVector(random(width - 10), random(height - 10));
    velocity = new PVector(0, 0);
  }

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

  boolean allowXBounce = true;
  boolean allowYBounce = true;
  int lifeTime = 0;

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

  void checkCollision()
  {
    if (player.location.x + 30 > this.location.x && player.location.x < this.location.x + 10 && player.location.y + 10 > this.location.y && player.location.y < this.location.y + 10)
    {
      background(0, 0, 0);
    }
  }

  void display()
  {
    pushStyle();
    fill(255, 204, 0);
    rect(this.location.x, this.location.y, 10, 10);
    popStyle();
    lifeTime++;
  }
}
