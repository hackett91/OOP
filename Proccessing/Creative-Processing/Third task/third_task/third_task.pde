// create an animation that moves from left to right half ways down the screen

void setup()
{
    //size = (width x axis,  height y axis);
    size(500,500);
}
float x = 0; // startpoint x = 0;
void draw()
{
  background(255,0,0);
  fill(0);
  ellipse(x,height/2,100,100);// circle = (starting position x axis, starting pos y axis, width, height);
  ++x;
  
}