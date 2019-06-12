class Button {
  private int circleX, circleY, circleDim;
  private color c;

  public Button(int X, int Y, int grootte, color c) {
    circleDim = grootte;

    circleX = X;
    circleY = Y;

    this.c = c;
  }

  public void drawCircle() {
    if (mousePressed)
    {
      if (mouseX > (circleX-circleDim/2) && mouseY > (circleY-circleDim/2) && mouseX < (circleX + circleDim/2) && mouseY < (circleY + circleDim/2))
      {
        fill(64);
      }
    } else
    {
      fill(c);
    }
    noStroke();
    circle(circleX, circleY, circleDim);
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

  public boolean getPressed() {
    if (mouseX > (circleX-circleDim/2) && mouseY > (circleY-circleDim/2) && mouseX < (circleX + circleDim/2) && mouseY < (circleY + circleDim/2))
      {
        return true;
      }
    else
    {
      return false;
    }
  }
}
