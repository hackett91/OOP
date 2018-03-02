//https://www.youtube.com/watch?v=1fwWYwl8J8s
//https://www.youtube.com/watch?v=Rgq8oy3to-E
//import controlP5.*;
//ControlP5 cp5;
import ddf.minim.*;
Minim minim;
AudioPlayer shootstar;
AudioPlayer button_act;

TimeDial[] t_dial =  new TimeDial[3];
boolean clicked = false;
int buttonWidth = 15;
int buttonHeight = 15;

//imaging
PImage [] image = new PImage[31];
Images [] movies = new Images[31];


int counter;
int display_time = 6000;
int lastTime =8000;
int control = 0; 

void setup() 
{
  size(1280, 640);
  background(255);
  
  minim = new Minim(this);
  shootstar = minim.loadFile("shootstar.mp3");
  button_act = minim.loadFile("button.wav");
  // b = new Images(50,10);
  //mainout = new MainOutline(80, 0, color(150));
  //dobber.add(mainout); //only adding 1 object
   for(int j = 0; j< image.length;j++)
  {
    image[j] = loadImage("image"+j+".jpg");
  }
  for(int i = 0; i <movies.length;i++)
  {
      movies[i] = new Images(image[i],width/2,10,1,1);
      
  }
  for(int i = 0; i< 1;i++)
  {
      mainout = new MainOutline(80, 0, color(150));
      dobber.add(mainout); //only adding 1 object
  }
  //https://www.youtube.com/watch?v=5hoECyE7O04 shaft
  //cp5 = new ControlP5(this);
  //cp5.addTextfield("M D YYYY HR MIN").setPosition(570,330).setSize(70,30);

  t_dial[0] = new TimeDial();
  t_dial[1] = new TimeDial(55);
  t_dial[2] = new TimeDial(110);
  lastTime = millis();
 
  //windowscreen();
 // dashboard();
 // steeringWheel();
 // plutoniumChamber();

  for (int i = 0; i < width-160; i = i+160)
  {
    line(0, 160+i, width, 160+i);
    line(160+i, 0, 160+i, height);
  }

  for (int i = 0; i < height-160; i = i+160)
  {
    line(160+i, 0, 160+i, height);
  }
}

ArrayList<DObject> dobber = new ArrayList<DObject>();
MainOutline mainout;
void draw() {
  background(0);
  // windowscreen();
  // dashboard();
  // steeringWheel();
  for (int i=0; i< dobber.size(); i++) {
    DObject dob = dobber.get(i);
    dob.update();
    dob.render();
  }
  
  t_dial[0].render();

  t_dial[1].render();
  
  t_dial[2].render();
  // red
   stroke(255,0,0);
  strokeWeight(3);
  line(795, 330,855, 405);
  line(855,405,855,650);
  //green
  stroke(0,255,0);
  line(805, 330,860, 400);
   line(860,400,838,650);
   //black
   stroke(0);
  line(798, 342,853, 402);
  line(855,405,843,650);
  //yellow
   stroke(255,255,0);
  line(795, 340,855, 405);
  line(855,405,845,650);  
  //blue
  stroke(0,0,255);
  line(800, 330,857, 400);
  line(857,400,850,650);
  
    // red
   stroke(255,0,0);
  strokeWeight(3);
  line(480, 440,450, 500);
  line(450, 500,452,650);
  //green
  stroke(0,255,0);
  line(472, 444,443, 504);
   line(443, 504,445,650);
   //black
   stroke(0);
  line(476, 442,446, 497);
  line(446, 497,448,650);

  //yellow
  stroke(255,255,0);
  line(478, 448,450, 506);
  line(450, 506,456,650); 
  //blue
  stroke(0,0,255);
  line(484, 448,453, 506);
  line(453, 506,459,650);
 
   
  if(control == 1)
  {
    
   
     
    if (millis() - lastTime >= display_time ) 
      {
       
        
       
        counter = ++counter % image.length;
        lastTime = millis();
      }
     // println(t_dial[0].getSize());
      if(counter >image.length)
      {
        counter =0;
        control =0;
      } 
    
     movies[counter].display();
     movies[counter].update();
  }

  
}
void mousePressed()
{
  float x_range = 25;
  float tlx = 489 - buttonWidth / 2;
  float centre_button_x = tlx + x_range;
  float y_range = 18;
  float tly = 456 - buttonHeight / 2;
  float centre_button_y = tly + y_range;
 // String month;
  String str;
  String str1;
  // activate button
  float but_width = 60;
  float but_height = 50;
  float act_x = 730 + but_width/2;
  float act_y = 320 + but_height/2;

  button_act.play();
  if (mouseX > tlx && mouseX < tlx + buttonWidth
    && mouseY > tly && mouseY < tly + buttonHeight)
    {
       str = "1";
      
       //color
       t_dial[0].update(str,1);
       t_dial[1].update(str,2);
       t_dial[2].update(str,3); 
     }
    else if (mouseX > centre_button_x && mouseX < centre_button_x + buttonWidth
    && mouseY > tly && mouseY < tly + buttonHeight)
    {  
      str1 = "2";
      t_dial[0].update(str1,1);
      t_dial[1].update(str1,2);
      t_dial[2].update(str1,3);
  
    }
    else if (mouseX > centre_button_x + x_range && mouseX < centre_button_x + x_range + buttonWidth
    && mouseY > tly && mouseY < tly + buttonHeight)
    {
        str1 = "3";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
    else if(mouseX > tlx && mouseX < tlx + buttonWidth
    && mouseY > tly+y_range && mouseY < tly+y_range + buttonHeight)
    {
       str1 = "4";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
     else if (mouseX > centre_button_x && mouseX < centre_button_x + buttonWidth
    && mouseY > centre_button_y && mouseY < centre_button_y  + buttonHeight)
    {
        str1 = "5";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
    else if (mouseX > centre_button_x + x_range && mouseX < centre_button_x + x_range + buttonWidth
    && mouseY > centre_button_y  && mouseY < centre_button_y  + buttonHeight)
    {
        str1 = "6";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
    else if(mouseX > tlx && mouseX < tlx + buttonWidth
    && mouseY > centre_button_y + y_range && mouseY < centre_button_y+y_range + buttonHeight)
    {
        str1 = "7";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
     else if (mouseX > centre_button_x && mouseX < centre_button_x + buttonWidth
    && mouseY > centre_button_y + y_range && mouseY < centre_button_y + y_range  + buttonHeight)
    {
      str1 = "8";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
    else if (mouseX > centre_button_x + x_range && mouseX < centre_button_x + x_range + buttonWidth
    && mouseY > centre_button_y + y_range  && mouseY < centre_button_y + y_range  + buttonHeight)
    {
      str1 = "9";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
    else if(mouseX > tlx && mouseX < tlx + buttonWidth
    &&  mouseY > centre_button_y + y_range+y_range  && mouseY < centre_button_y + y_range +y_range  + buttonHeight)
    {
      str1 = "*";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
     else if (mouseX > centre_button_x && mouseX < centre_button_x + buttonWidth
    &&  mouseY > centre_button_y + y_range+y_range  && mouseY < centre_button_y + y_range +y_range  + buttonHeight)
    {
      str1 = "0";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
    }
    else if (mouseX > centre_button_x + x_range && mouseX < centre_button_x + x_range + buttonWidth
    && mouseY > centre_button_y + y_range+y_range  && mouseY < centre_button_y + y_range +y_range  + buttonHeight)
    {
     str1 = "#";
        t_dial[0].update(str1,1);
        t_dial[1].update(str1,2);
        t_dial[2].update(str1,3);
        
    }
     
  if (mouseX > act_x && mouseX < act_x + but_width
    && mouseY > act_y && mouseY < act_y + but_height)
    {
      control = 1;
      shootstar.play();
      t_dial[0].update();
    }
   
    
    
}

void mouseReleased()
{
  button_act.rewind();
  clicked = false;
}