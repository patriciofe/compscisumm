class Platform
{
  int x, y, l;
  color c;
  
  /*  CONSTRUCTORSCONSTRUCTORSCONSTRUCTORSCONSTRUCTORSC
  Constructors
  
  */
  Platform (int x, int y)  // Constructor
  {
    this(x, y, 200, #FF0000);
  }
  
  Platform(int x, int y, int l) // Constructor
  {
    this(x, y, l, #FF0000);
  }
  
  Platform (int x, int y, int l, color c) // Custom constructor
  {
    this.x = x;
    this.y = y;
    this.l = l;
    this.c = c; 
  }
  
  
  void display () // Displays platform
  {
    fill(c);
    stroke(c);
    rect(x - scrollFactor, y, l, 25);
  }
}