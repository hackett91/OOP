//this inherites all the values(variables) of its parent
class MainOutline extends DObject
{
  String[] number = {"1","2","3","4","5","6","7","8","9","*","0","#"};
  String plutonium = "PLUTONIUM CHAMBER";
  float xc = PI;
  float  yc = 0;
  
  
 
  
   
  //pos.x = 80, pos.y = 0;
  MainOutline(float x, float y, color c)
  {
    //references the class of dobject
    super(x, y, 0, c);
    //c = color(150);
    //x = 80;
    //y = 0;
  }
  ////  https://processing.org/tutorials/arrays/
 
  void update()
  {
   
    if(xc < 0)
    {
      
        xc+=20;
    }
    else
    {
      xc-=20;
    
    }
    
  }
  void render()
  {
    //dashboard
    strokeWeight(1);
    fill(85);
    rect(0, 320, 1280, 250);
    fill(100);
    rect(0, 435, 1280, 320);
    //window screen
    strokeWeight(20);
    stroke(c);
    //top
    line(240, pos.y, 1040, pos.y);
    //bottom
    line(pos.x, 320, 1200, 320);
    strokeWeight(100);
    fill(85);
    //sides L - R
    line(pos.x-30, 320, 210, pos.y+20);
    line(1070, pos.y, 1230, 320+20);
    stroke(139,69,19);
     line(1230, 380, 1230, 590);
     line(pos.x-30, 380, pos.x-30, 590);
     stroke(190);
     strokeWeight(20);
     line(95,480,50,500);
     ellipse(95,480,25,25);
      line(1200,480,1230,500);
     ellipse(1200,480,25,25);
    //steering wheel
    strokeWeight(1);
    fill(150);
    ellipse(360, 340, 300, 250);
   
   
   //https://www.youtube.com/watch?v=NLzne4XaR3M curve text
    ////plutonium chamber
    fill(150);
    rect(850,320,250,80);
    fill(0);
    rect(850,400,250,5);
    ellipse(890,360,60,60);
    fill(255);
    ellipse(890,360,50,50);
    fill(255,0,0);
    arc(890,360,45,45,0,PI);
    fill(0);
    ellipse(965,360,60,60);
    fill(255);
    ellipse(965,360,50,50);
    strokeWeight(2);
    stroke(255,0,0);
    noFill();
    arc(965,360,40,40,PI,4*PI);
    frameRate(4);
    fill(255,0,0);
    arc(965,360,40,40,PI-xc,xc);
    strokeWeight(1);
    stroke(0);
    fill(0);
    rect(1010,330,75,60);
    fill(255);
    rect(1022,340,50,40);
    fill(255);
    textSize(6.5);
    strokeWeight(2);
    text(plutonium,1010,390);
    //input dial
    strokeWeight(1);
    fill(40);
    rect(480,440,70,80);
    fill(255);
  
    for(int i = 0 ; i < 68;i +=18)
    {
      for(int j = 0; j <66; j+=22)
      {
       fill(255);
       rect(485+j,445+i,15,15);   
      }
    } 
    
   int g=0;
   int s=0;
    for(int k = 0; k<12;k++)
    {
      
       fill(255,0,0);
       textSize(15);
       text(number[k],489+s,456.5+g);
       s+= 22;
       if(s % 66 == 0)
       {
         s =0;
         g+=18;
       }
    }
    //activate red
    fill(0);
    rect(720,310,80,80);
    fill(122);
    rect(720,310,80,70);
    fill(255,0,0);
    rect(730,320,60,50);
    fill(255);
    text("Activate",733,350);
  }

}