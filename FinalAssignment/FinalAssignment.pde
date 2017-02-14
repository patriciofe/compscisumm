Platform[] platformList = new Platform[5]; // Array of platforms
Ch q = new Ch(300, 100);  // Main Character

void setup ()
{
  size(1100, 700);
  println("Game res = " + width + " x " + height);
  platformList[0] = new Platform(200, 500, 113);  // Create platforms
  platformList[1] = new Platform(300, 600, 200);
}

void draw ()
{
  background(#35DBFA);
  for (int i = 0; i < 2; i++) // Display all platforms (should use
  {                           // a variable instead of a literal '2'
    platformList[i].display();
  }
  q.move(platformList[0]);
  q.move(platformList[1]);
  q.display();
}
