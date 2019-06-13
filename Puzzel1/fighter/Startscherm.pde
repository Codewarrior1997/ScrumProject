class Startscherm {
  String titelGame;
  PFont mono;

  public Startscherm()
  {
    titelGame = "Radioactive hazard";
    mono = loadFont("Minecraft.ttf");
  }


  void drawMenu() {
    textAlign(CENTER, CENTER);
    textFont(mono,32);
    text(titelGame, width/2, height/6);
  }
}
