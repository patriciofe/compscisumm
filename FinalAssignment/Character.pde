class Ch
{
  int x, y, l;
  color c;
  float vx, vy;
  
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
    if (x + l / 2 >= p.x && x +  l / 2 <= p.x + p.l && y + l >= p.y - 2 && y + l <= p.y + 50)
    {
      return true;
    }
    else
      return false;
  }
  
  void move (Platform p)
  {
    if (onPlatform(p))
    {
      vy = 0;
      y = p.y;
    }
    else
      vy += 1;
    y += vy;
    if (keyPressed)
      if (key == 'd')
        x += 5;
      else if (key == 'a')
        x -= 5;
  }
}