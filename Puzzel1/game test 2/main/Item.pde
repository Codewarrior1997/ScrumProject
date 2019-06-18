// [# Under construction #]



class Item
{
  PVector location;
  int colorR, colorG, colorB;

  Item()
  {
    location = new PVector(random(width - 30), random(height - 30));
    colorR = 0;
    colorG = 255;
    colorB = 0;
  }

  void CheckItemPlayerCollision()
  {
    if (player.location.x + 30 > this.location.x && player.location.x < this.location.x + 20 && player.location.y + 30 > this.location.y && player.location.y < this.location.y + 20)
    {
      
      colorR = 255;
      colorG = 255;
      colorB = 255;
    }
  }

  void drawItem()
  {
    //pushStyle();
    fill(colorR, colorG, colorB);
    rect(this.location.x, this.location.y, 20, 20);
    //popStyle();
  }
}
