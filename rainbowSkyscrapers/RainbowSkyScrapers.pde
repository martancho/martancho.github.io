int barWidthX = 2;
int barWidthY = 20;
int lastBar = -1;

void setup() 
{
  size(1240, 800);
  colorMode(HSB, height, height, height);  
  smooth();
  noStroke();
  background(0);
}

void draw() 
{
  float rx=map(mouseX, 0, width, 0, random(100));
  float ry=map(mouseY, 0, width, 0, random(100));
  int whichBarY = mouseY / barWidthY;
  int whichBarX = mouseX / barWidthX;
  if (whichBarX != lastBar) 
  {
   if (frameCount % 0.5 == 0) {
    fill(frameCount * 3 % 255, frameCount * 5 % 255,
      frameCount * 7 % 255);
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(frameCount * 4  % 360));
    rect(mouseX, mouseY, 80, 20);
    popMatrix();
  }
    int barX = whichBarX * barWidthX;
    int barY = whichBarY * barWidthY;
    fill(mouseY, height, height);
    rect(barX, barY, barWidthX, height);
    lastBar = whichBarY;
  }
}


