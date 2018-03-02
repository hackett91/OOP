PImage[] images = new PImage[20]; // Supposing we have 20 images
int counter; // Automatically initialized at 0
final int DISPLAY_TIME = 2000; // 2000 ms = 2 seconds
int lastTime; // When the current image was first displayed
 
void setup()
{
  size(500, 500);
 
  for (int i = 0; i < images.length; i++)
  {
    images[i] = loadImage("image" + nf(i+1, 2) + ".jpg"); // nf() allows to generate 01, 02, etc.
  }
  lastTime = millis();
}
 
void draw()
{
  background(255);
  fill(#005599);
  text(frameCount, 10, 20); // Shows the sketch isn't stopped between each image
 
  if (millis() - lastTime >= DISPLAY_TIME) // Time to display next image
  {
    // Increment counter, then compute its modulo, ie. reset it at zero when reaching images.length
    counter = ++counter % images.length;
    lastTime = millis();
  }
  image(images[counter], 50, 50);
}