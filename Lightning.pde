int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0);
}
void draw()
{
  noStroke();
  fill(0,0,0,20);
  rect(0, 0, 300, 300);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   if(mousePressed == true)
  {
  noStroke();
  fill(255, 255, 255, 255);
  rect(0,0,300,300);
  }
  else
  {
    while(endY <= 300)
    {
      endX = startX + (int)(Math.random()*20) - 10;
      endY = startY + (int)(Math.random()*10);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
}


void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}