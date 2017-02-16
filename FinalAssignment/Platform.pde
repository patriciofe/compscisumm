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
    append(platformList, this);
  }
  
  void display ()
  {
    fill(c);
    stroke(c);
    rect(x, y, l, 25);
  }
}
