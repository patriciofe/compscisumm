Ch q = new Ch();  // Main Character
Platform [] one = {new Platform(300, 600, 400), new Platform(200, 500, 113)};
Level levelOne = new Level(225, 100, one, #35DBFA);
Level[] levelList = {levelOne};
int screen = -1;
int scrollFactor = 0;

boolean mouseIn (int x, int y, int lx, int ly)
{
  return (mouseX >= x && mouseX <= x + lx && mouseY >= y && mouseY <= y + ly) ? true : false;
}

void setup ()
{
  size(1100, 700);
  println("Game res = " + width + " x " + height);
  
}

void keyReleased()
{
  if (key == CODED)
    if (keyCode == LEFT || keyCode == RIGHT)  
      q.lastDir = 0;
}

void mouseReleased ()
{
  if (screen == -1)
    if (mouseIn(0, 0, width, height))
    {
      screen++;
      levelList[screen].start();
    }
}

void draw ()
{
  background(#35DBFA); // Display all platforms (should use
  if (screen == -1)
  {
    
  }
  if (screen >= 0)
  {
    levelList[screen].display();
    for (int i = 0; i < levelList[screen].platformList.length; i++)
    {
      q.move(levelList[screen].platformList[i]);
    }
  }
}