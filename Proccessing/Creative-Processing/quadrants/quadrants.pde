void setup()
{
  size(500,500);
  fill(0);
  //intialising cx, cy width half of size width and height
  cx = width/2;
  cy = height/2;
  
}
float cx,cy;

float x = 0;
float y =0;

void draw()
{
  //black background
  background(0);
  
  //fill line
  stroke(255,0,0);
  //line(x1,y1,x2,y2);
  line(cx,y,cx,height);
  line(x,cy,width,cy);
  
  fill(255,0,0);
  
  //top left quadrant
  if(mouseX < cx && mouseY < cy){
    //rect(topleft_point_x,topleft_point_y,width,height);    
    rect(x,y,cx,cy);
  }
  //bottom right quadrant
  else if(mouseX > cx && mouseY >cy){
    //rect(topleft_point_x,topleft_point_y,width,height);  
    rect(cx,cy,cx,cy);
    
  }
  //top right quadrant
  else if(mouseX >= cx && mouseY <= cy){
    //rect(topleft_point_x,topleft_point_y,width,height);  
    rect(cx,y,cx,cy);
  }
  //bottom left quadrant
  else if(mouseX <= cx && mouseY >= cy){
    //rect(topleft_point_x,topleft_point_y,width,height);  
    rect(x,cy,cx,cy);
  }
}