class Images
{
  PImage img;
  float x;
  float y;
  float w;
  float h;
  float left =0;
  
  
  Images(PImage temp_img,float x, float y, float h, float w)
  {
   this.x = x;
   this.y = y;
   img = temp_img;
    
  }
  void pop(){
    
    if(y == 110)
   {
      y =10;
      x = width/2;
      w =0;
      h =0;
      if(left ==0)
      {
        left = 1;
      }
      else
      {
        left = 0;
      }
    }
  }

  void update(){
    
    if(left ==0)
    {
       y+=5;
       x+=5;        
    }
    else
    {
      y+=5;
      x-=7;
    }
      
   w+=5;
   h+=5;
    
  }
  void display()
  {
      //image,x,y,w,h optional w, h
      image(img,x, y,20+w, 20+h);
  }
}