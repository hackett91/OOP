class TimeDial{
  // data
 String s = "         Month            Day            Year";
 PFont f = createFont("Georgia",8);
 float dial_height;
  float y;
  String Date = "OCT";
  float colour =0;
 // String s1 = "";
  String []s1 = {""};
  int thousand =0;
  int hundred =0;
  int ten =0;
  int unit = 0;
  int len;
 
  //constructors
 
  TimeDial(float tempY){
    dial_height= 560;
     y = tempY;
    
  }
  TimeDial(){
     y=0;
  }
  
   
   int getSize()
   {
     return len;
   }
  // update
  void update(String str, float x)
  {
     
   s1 = append(s1,str);
   colour = x;
  
     
  }
  
  void update()
  {
        
         // println(len);
  }
  
  
  //draw shape or render
  void render()
  {
    int j = 0;
    fill(0);
    rect(560,310+y,150,56);
    fill(120);
    rect(560,310+y,150,50);
    fill(0);
    textFont(f);
    text(s,560,320+y);
    fill(0);
    rect(565,322+y,40,35);
   
   //month
    if( s1.length> 2)
    {
      if(colour == 1)
      {
        fill(0,255,0);
        textSize(24);
        text(s1[1],575,345+y);
        text(s1[2],585,345+y);
      }
       else if (colour == 2)
       {
          fill(255,140,0);
          textSize(24);
          text(s1[1],575,345+y);
          text(s1[2],585,345+y);

       }
       else
       {
          fill(255,0,0);
          textSize(24);
          text(s1[1],575,345+y);
          text(s1[2],585,345+y);
       }
       
    }
    
    fill(0);
    rect(610,322+y,40,35);
    //day
    if( s1.length> 4)
    {
      if(colour == 1)
      {
        fill(0,255,0);
        textSize(24);
        text(s1[3],620,345+y);
        text(s1[4],630,345+y);
      }
       else if (colour == 2)
       {
          fill(255,140,0);
          textSize(24);

        text(s1[3],620,345+y);
        text(s1[4],630,345+y);
       }
       else
       {
          fill(255,0,0);
          textSize(24);
          text(s1[3],620,345+y);
          text(s1[4],630,345+y);
       }
       
    }
    fill(0);
    rect(655,322+y,45,35);
    //year
     if( s1.length> 8 )
    {
      if(colour == 1)
      {
        fill(0,255,0);
        textSize(24);
        text(s1[5],655,345+y);
          text(s1[6],665,345+y);
           text(s1[7],675,345+y);
          text(s1[8],685,345+y);
      }
       else if (colour == 2)
       {
          fill(255,140,0);
          textSize(24);
           text(s1[5],655,345+y);
          text(s1[6],665,345+y);
           text(s1[7],675,345+y);
          text(s1[8],685,345+y);
       }
       else
       {
          fill(255,0,0);
          textSize(24);
          text(s1[5],655,345+y);
          text(s1[6],665,345+y);
          text(s1[7],675,345+y);
          text(s1[8],685,345+y);
     
          
       }  
       if(s1.length == 5)
      {
        thousand = parseInt(s1[4]);
        thousand *= 1000;
      }
      else if(s1.length == 6)
      {
        hundred = parseInt(s1[5]);
        hundred *= 100;
      }
      else if (s1.length == 7)
      {
        ten = parseInt(s1[6]);
        ten *=10;
      }
      else if (s1.length == 8)
      {
        println(unit);
        unit = parseInt(s1[7]);
      }
      else
      {
      
        thousand = thousand + hundred + ten + unit;
        // println(thousand);
        len = 2017- thousand;
      }
    }
    //fill(0);
    //rect(705,322+y,40,35);
    ////hour
    //    if( s1.length> 10)
    //{
    //  if(colour == 1)
    //  {
    //    fill(0,255,0);
    //    textSize(24);
    //    text(s1[9],710,345+y);
    //    text(s1[10],720,345+y);
    //  }
    //   else if (colour == 2)
    //   {
    //      fill(255,140,0);
    //      textSize(24);
    //     text(s1[9],710,345+y);
    //    text(s1[10],720,345+y);
    //   }
    //   else
    //   {
    //      fill(255,0,0);
    //      textSize(24);
    //      text(s1[9],710,345+y);
    //    text(s1[10],720,345+y);
    //   }  
    //}
    // fill(0);
    //rect(750,322+y,40,35);
    ////min
    //   if( s1.length> 12)
    //{
    //  if(colour == 1)
    //  {
    //    fill(0,255,0);
    //    textSize(24);
    //    text(s1[11],755,345+y);
    //    text(s1[12],765,345+y);
    //  }
    //   else if (colour == 2)
    //   {
    //      fill(255,140,0);
    //      textSize(24);
    //     text(s1[11],755,345+y);
    //    text(s1[12],765,345+y);
    //   }
    //   else
    //   {
    //      fill(255,0,0);
    //      textSize(24);
    //      text(s1[11],755,345+y);
    //    text(s1[12],765,345+y);
    //   }  
    //}
  } 
}