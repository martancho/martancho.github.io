Mover[] movers = new Mover[40];

void setup()
{
  colorMode(HSB, 360);
  size(400, 640);
  for (int i = 0; i < movers.length; i++)
  {
    movers[i] = new Mover(color(random(360), random(360), random(360)), random(width), random(height), random(15));
  }
}
void draw()
{
  background(frameCount % 360, frameCount % 360, frameCount % 360);
  // Update and display
  for (int i = 0; i < movers.length; i++)
  {
    movers[i].move();
    movers[i].display();
  }
}


class Mover {
  float radius;
  color c;
  float xpos;
  float ypos; 
  float xspeed;

  Mover(color tempC, float tempXpos, float tempYpos, float tempXspeed)
  {
    radius = random(30.0, 60.0);
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display() {
    stroke(0);
    fill(c);
    ellipse(xpos, ypos, radius, radius/2);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}


