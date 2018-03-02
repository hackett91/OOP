// create an animation that moves from left to right half ways down the screen

void setup()
{
    //size = (width x axis,  height y axis);
    size(500,500);
}
float x = 0; // startpoint x = 0;
int i;
void draw()
{
  background(255,0,0);
  fill(0);
  ellipse(x,height/2,100,100);// circle = (starting position x axis, starting pos y axis, width, height);
  
  if(x == width)
  {
    i = 0;
  }
  else if(x == 0)
  {
    i = 1;
  }
  
  if(x <= width && i == 1 )
  {
     ++x;
     
  }
   else
  {
    --x;
    
  }
  
 
 
  
  
}