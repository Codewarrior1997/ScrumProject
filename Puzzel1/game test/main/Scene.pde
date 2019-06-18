abstract class Scene
{
  ArrayList<GameObject> gameObjects;
  
  public Scene()
  {
    
  }
  
  public abstract void init();
  public abstract void update();
  public abstract void render();
  
}
