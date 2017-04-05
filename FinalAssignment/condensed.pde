class Platform
{
  int x, y, l;
  color c;
  
  Platform (int x, int y)
  {
    this(x, y, 200, #FF0000);
  }
  
  Platform(int x, int y, int l)
  {
    this(x, y, l, #FF0000);
  }
  
  Platform (int x, int y, int l, color c)
  {
    this.x = x;
    this.y = y;
    this.l = l;
    this.c = c; 
  }
  
  void display ()
  {
    fill(c);
    stroke(c);
    rect(x, y, l, 25);
  }
}



class Ch
{
  int x, y, l, lastDir;
  color c;
  float vx, vy;
  boolean onJump = false;
  
  Ch (int x, int y, int l, color c)
  {
    this.l = l;
    this.x = x;
    this.y = y;
    this.c = c;
  }
  
  Ch (int x, int y)
  {
    this.x = x;
    this.y = y;
    l = 25;
    c = #FFFFFF;
  }
  
  void display ()
  {
    fill(c);
    stroke(c);
    rect(x, y, l, l);
  }
  
  boolean onPlatform(Platform p)
  {
    if (x + l >= p.x && x <= p.x + p.l && y + l >= p.y - 1 && y <= p.y + 50)
      return true;
    else
      return false;
  }
  
  void move (Platform p)
  {
    vy += 0.4;
    if (onPlatform(p))
    {
      vy = 0;
      y = p.y - 26;
      onJump = false;
      x += lastDir;
    }
    if (x > width / 2)
    {
      x = (width / 2) - 1;
      levelList[screen].scroll(lastDir);
    }
     
      
      
    if (keyPressed && key == CODED)
      if (keyCode == RIGHT)
      {
        x += 2;
        lastDir = 2;
      }
      else if (keyCode == LEFT)
      {
        x -= 2;
        lastDir = -2;
      }
      else if (keyCode == UP && !onJump)
      {
        onJump = true;
        vy = -10;
      }
    
    if (onJump)
      x += lastDir;
    if (!onPlatform(p))
      y += vy;
    this.display();
  }

}



class Level
{
  Platform[] platformList;
  color bgColor;
  
  Level (Platform[] platformList, color bgColor)
  {
    this.platformList = new Platform[platformList.length];
    for (int i = 0; i < platformList.length; i++)
    {
      this.platformList[i] = platformList[i];
    }
    this.bgColor = bgColor;
  }
  
  void display ()
  {
    background(bgColor);
    for (int i = 0; i < platformList.length; i++)
    {
      platformList[i].display();
    }
  }
  
  void scroll (int forward)
  {
    for (int i = 0; i < platformList.length; i++)
      if (q.lastDir == 2)
        platformList[i].x -= 2;
      else if (q.lastDir == -2)
        platformList[i].x += 2;
  }
}



Ch q = new Ch(300, 100);  // Main Character
Platform [] one = {new Platform(300, 600, 400), new Platform(200, 500, 113)};
Level levelOne = new Level(one, #35DBFA);
Level[] levelList = {levelOne};
int screen = 0;

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
