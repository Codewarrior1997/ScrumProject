void setup()
{
  size(1280, 720);
}

PImage img;

void draw()
{
  img = loadImage("nuclear_background.jpg");
  background(img);

  Button button = new Button(200, 200, 100, color(255, 0, 0));
  
  button.drawCircle();
  
  println(button.getPressed());
} 
