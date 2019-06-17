class AtomicWaste {
  int posX, posY; 
  Fighter fighter1;

  public AtomicWaste(int posX, int posY) 
  {
    this.posX = posX;
    this.posY = posY;

    fighter1 = new Fighter();
  }

  public void drawAtomicWaste()
  {
    pushStyle();
    fill(#00FF0A);
    rect(posX, posY, 15, 15);
    popStyle();

    if (fighter1.getXPos()+20>posX && fighter1.getYPos()+20>posY) 
    {
      println("raak");
    }
  }
}
