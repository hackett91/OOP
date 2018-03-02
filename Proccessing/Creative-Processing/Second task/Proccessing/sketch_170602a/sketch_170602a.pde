void setup(){
    size(500,500);
    cx = width / 2;
    cy = height /2;
    x = 0;
    y = 0;
    r =10;
    theta = 0;
  
}

float x,y,cx,cy,r,theta;
float rdir = 1;

void draw(){
    //background(0,255,34);
   // noStroke();
    fill(random(5,97),random(40.200),210.40);
    x++;
    //x = sin(theta) * r +cx;
    y = -cos(theta) * r + cy;
    
    ellipse(x,y,r,r);
    r += rdir;
  
    if(r>200){
      rdir = -rdir;
    }
    
    theta += 0.7;
  
}