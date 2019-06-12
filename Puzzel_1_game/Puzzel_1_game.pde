void setup()
{
  size(1280, 720);
}

PImage img;

void draw()
{
  img = loadImage("nuclear_background.png");
  background(img);
  
  

  Button button = new Button(200, 200, 100, color(255, 0, 0));
  Button button2 = new Button(400, 200, 100, color(0, 255, 0));
  Button button3 = new Button(600, 200, 100, color(0, 0, 255));


  button.drawCircle();
  button2.drawCircle();
  button3.drawCircle();

  println(button.getPressed());
} 
