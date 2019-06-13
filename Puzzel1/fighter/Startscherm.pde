class Startscherm {
  String titelGame;
  PFont mono;
  Button startButton, exitButton;

  public Startscherm()
  {
    titelGame = "Radioactive Hazard";
    mono = createFont("Minecraft.ttf", 90);
    startButton = new Button(200, 300, 100, color(255, 0, 0));
    exitButton = new Button(200, 500, 100, color(0, 0, 255));
  }

  void drawMenu() {
    background(#27A018);

    textAlign(CENTER, CENTER);
    textFont(mono);
    
    text(titelGame, width/2, height/6);
    text("Start!", width/2+15, 300);
    text("Afsluiten", width/2+15, 500);

    startButton.drawCircle();
    exitButton.drawCircle();
  }

  String startOrExit() {
    String state="nothing";

    if (startButton.getPressed()) {
      state= "start";
    } else if (exitButton.getPressed()) {
      state= "exit";
    }
    return state;
  }
}
