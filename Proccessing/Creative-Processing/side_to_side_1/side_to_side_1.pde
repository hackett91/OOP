void setup()
{
    size(500,500);
}


float x = 0;

void draw()
{
    background(255,0,0);
    fill(2);
    ellipse(x,height/2,100,100);
    x++;
}