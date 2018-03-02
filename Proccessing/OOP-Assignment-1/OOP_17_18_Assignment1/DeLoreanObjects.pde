abstract class DObject
{
  //reusable variables - instead of keep calling them multiple times
  PVector pos; 
  color c; 
  PVector forward;
  float imgG;
  
  DObject(float x, float y, float imgG, color c)
  {
    pos = new PVector(x,y);
    this.imgG = imgG;
    this.c = c;
   
  }
  //Any class that is inherited by dobject must have void and render
  //mechanics
  abstract void update();
  //first draw
  abstract void render();

  
}