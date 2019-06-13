//alle eigenschappen voor een button met kleur
class Button {
  private int circleX, circleY, circleDim;
  private color c;
  PImage img;

  //maakt een button aan met X en Y coördinaten, bepaalde grootte en een kleur
  public Button(int X, int Y, int grootte, color c) {
    circleDim = grootte;

    circleX = X;
    circleY = Y;

    this.c = c;
  }

  //tekent een klikbare cirkel
  public void drawCircle() {
    pushStyle();
    fill(c);

    if (mousePressed)
    {
      if (mouseX > (circleX-circleDim/2) && mouseY > (circleY-circleDim/2) && mouseX < (circleX + circleDim/2) && mouseY < (circleY + circleDim/2))
      {
        fill(64);
      }
    }

    noStroke();
    circle(circleX, circleY, circleDim);

    popStyle();
  }


  public int getCircleX() {
    return circleX;
  }

  public int getCircleY() {
    return circleY;
  }

  public int getCircleDim() {
    return circleDim;
  }

  public color getColor() {
    return c;
  }

  //geeft een "true" terug als hij geklikt wordt. Anders is het false..

  public boolean getPressed() {

    if (mousePressed && mouseX > (circleX-circleDim/2) && mouseY > (circleY-circleDim/2) && mouseX < (circleX + circleDim/2) && mouseY < (circleY + circleDim/2))
    {
      return true;
    } else
    {
      return false;
    }
  }
}
