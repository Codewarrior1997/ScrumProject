class Ball
{
  PVector location;
  PVector velocity;
  PVector acceleration;

  Ball(float positionX, float positionY, float velocityX, float velocityY)
  {
    location = new PVector(positionX, positionY);
    velocity = new PVector(velocityX, velocityY);
    acceleration = new PVector(-0.0, 0.1);
  }

  Ball()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(1, 10);
    acceleration = new PVector(0, 0.1);
  }

  boolean allowXBounce = true;
  boolean allowYBounce = true;

  void move()
  {
    // Accelerate object downwards
    velocity.add(acceleration);

    // Move object by adding velocity
    location.add(velocity);

    // Subtract a small amount of horizontal velocy because of air resistance
    velocity.x = velocity.x * (0.998);
    
    // Make sure the ball stops faster if in contact withnthe ground to simulate fricyion
    if ((velocity.x < 0.2) && (velocity.x > -0.2) && !(location.x > width) && !(location.x < 0) && (location.y > height - 3)) 
    {
      velocity.x = 0;
    }


    
    this.bounce();
    println(velocity.x + "   " + velocity.y);
  }

  // Check for collisions with the walls
  void bounce()
  {
    if (((location.x > width) || (location.x < 0)) && (allowXBounce))
    {
      velocity.x = velocity.x * -0.8;
      allowXBounce = false;
      allowYBounce = true;
    } else
    {
      allowXBounce = true;
    }

    if (((location.y > height) || (location.y < 0)) && (allowYBounce))
    {
      velocity.y = velocity.y * -0.8;
      location.y -= 0.5;
      allowXBounce = true;
      allowYBounce = false;
    } else
    {
      allowYBounce = true;
    }
  }
}
