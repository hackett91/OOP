function setup() {
  createCanvas(600,600);

 // line(10,10,110,100);//x1,y1,x2,y2
  // rect(height/2,width/2,50,20); //px,py,w,h
 // stroke(200,0,250);
 // point(60,90);
 // triangle(10,10,90,100,20,200);
  
}

function draw() {
  
  //red background
  background(255,0,0);
  
  //yellow circle
  fill(255,255,0);
  ellipse(300,300,100,100);//cx,cy,w,h
  
  //lightblue triangle
  fill(0,255,255);
  triangle(300,5,150,450,450,450);
  
  //grey oval
  fill(184,184,148);
  ellipse(300,300,100,100);
  
  //black circle
  fill(0);
  ellipse(300,300,20,20);
  
  
}
  